#! /usr/bin/env python3

import gi
gi.require_version('Gtk', '3.0')
from gi.repository import Gdk, Gtk

import os
import re
import fnmatch
from collections import defaultdict
from utils import getoutput, shell_exec, select_combobox_value, get_combox_value
from dialogs import QuestionDialog, ErrorDialog, InputDialog
from encryption import is_encrypted, is_connected, connect_block_device, get_status
from os.path import join, abspath, dirname, basename, exists

# http://sourcecodebrowser.com/pyparted/3.0/annotated.html
import parted

# Needed for atof
import locale
locale.setlocale(locale.LC_ALL, '')


(IDX_PART_PATH,
 IDX_PART_GRUB,
 IDX_PART_TYPE,
 IDX_PART_LABEL,
 IDX_PART_MOUNT_AS,
 IDX_PART_FORMAT_AS,
 IDX_PART_ENCRYPT,
 IDX_PART_ENC_PASSPHRASE,
 IDX_PART_SIZE,
 IDX_PART_FREE_SPACE,
 IDX_PART_DISK_TYPE,
 IDX_PART_OBJECT,
 IDX_PART_DISK) = list(range(13))

TMP_MOUNTPOINT = '/tmp/live-installer-3/tmpmount'
RESOURCE_DIR = '/usr/share/live-installer-3/'

EFI_MOUNT_POINT = '/boot/efi'
SWAP_MOUNT_POINT = 'swap'


with open(RESOURCE_DIR + 'disk-partitions.html') as f:
    DISK_TEMPLATE = f.read()
    # cut out the single partition (skeleton) block
    PARTITION_TEMPLATE = re.search('CUT_HERE([\s\S]+?)CUT_HERE', DISK_TEMPLATE, re.MULTILINE).group(1)
    # delete the skeleton from original
    DISK_TEMPLATE = DISK_TEMPLATE.replace(PARTITION_TEMPLATE, '')
    # duplicate all { or } in original CSS so they don't get interpreted as part of string formatting
    DISK_TEMPLATE = re.sub('<style>[\s\S]+?</style>', lambda match: match.group().replace('{', '{{').replace('}', '}}'), DISK_TEMPLATE)


# ===================================================================
# Global functions
# ===================================================================

def is_efi_supported():
    # Are we running under with efi ?
    shell_exec("modprobe efivars >/dev/null 2>&1")
    return exists("/proc/efi") or exists("/sys/firmware/efi")


def path_exists(*args):
    return exists(join(*args))


def build_partitions(_installer):
    global installer
    installer = _installer
    installer.window.set_sensitive(False)
    installer.setup.grub_device = None
    partition_setup = PartitionSetup()
    if installer.setup.disks:
        installer._selected_disk = installer.setup.disks[0][0]
        installer.partitions_browser.showHtml(partition_setup.get_html(installer._selected_disk))
    installer.go("treeview_disks").set_model(partition_setup)
    installer.go("treeview_disks").expand_all()
    installer.window.set_sensitive(True)


def update_html_preview(selection):
    model, row = selection.get_selected()
    try: disk = model[row][IDX_PART_DISK]
    except TypeError: return  # no disk is selected or no disk available
    if disk != installer._selected_disk:
        installer._selected_disk = disk
        installer.partitions_browser.showHtml(model.get_html(disk))


def edit_partition_dialog(widget, path, viewcol):
    ''' assign the partition ... '''
    model, iter = installer.go("treeview_disks").get_selection().get_selected()
    if not iter: return
    row = model[iter]
    partition = row[IDX_PART_OBJECT]
    if not partition: return
    partition_type = model.get_value(iter, IDX_PART_TYPE)
    if (partition.partition.type == parted.PARTITION_EXTENDED or
        partition.partition.number == -1 or
        "swap" in partition_type):
        return

    PartitionDialog(partition,
                    row[IDX_PART_MOUNT_AS],
                    row[IDX_PART_FORMAT_AS])


def assign_mount_point(partition, mount_point, filesystem, encrypt=False, enc_passphrase='', label=''):
    # Assign it in the treeview
    model = installer.go("treeview_disks").get_model()
    for disk in model:
        for part in disk.iterchildren():
            if partition == part[IDX_PART_OBJECT]:
                # Check the given filesystem
                filesystem = get_safe_fs(partition, mount_point, filesystem)

                if 'luks' in part[IDX_PART_TYPE]:
                    if not encrypt and filesystem != '':
                        # Formatting a LUKS partition to something else: use the source device as path
                        part[IDX_PART_PATH] = partition.enc_status['device']
                    else:
                        # Set path to mapped drive for existing encrypted drive
                        part[IDX_PART_PATH] = partition.enc_status['active']
                elif partition.enc_status['active'] != '':
                    part[IDX_PART_PATH] = partition.enc_status['active']

                part[IDX_PART_MOUNT_AS] = mount_point
                part[IDX_PART_FORMAT_AS] = filesystem
                part[IDX_PART_ENCRYPT] = encrypt
                part[IDX_PART_ENC_PASSPHRASE] = enc_passphrase
                part[IDX_PART_LABEL] = label
            elif mount_point == part[IDX_PART_MOUNT_AS]:
                part[IDX_PART_MOUNT_AS] = ''
                part[IDX_PART_FORMAT_AS] = ''
                part[IDX_PART_ENCRYPT] = False

    # Assign it in our setup
    for part in installer.setup.partitions:
        # Loop partitions to get partition info
        if part == partition:
            if part.type == 'luks':
                if not encrypt and filesystem != '':
                    # Formatting a LUKS partition to something else: use the source device as path
                    part.path = partition.enc_status['device']
                    print("Set luks path {} to device".format(part.path))
                else:
                    # Set path to mapped drive for existing encrypted drive
                    part.path = partition.enc_status['active']
                    print("Set luks path {} to active".format(part.path))
            elif partition.enc_status['active'] != '':
                part.path = partition.enc_status['active']
                print("Set path {} to active".format(part.path))

            # Save the new values
            part.mount_as, part.format_as, part.encrypt, part.enc_passphrase, part.label = mount_point, filesystem, encrypt, enc_passphrase, label
        elif part.mount_as == mount_point:
            print("Reset data on {}".format(part.path))
            part.mount_as, part.format_as, part.encrypt = '', '', False

    installer.setup.print_setup()


def get_safe_fs(partition, mount_point, filesystem):
    if filesystem == '':
        for part in installer.setup.partitions:
            # TODO: don't check part.type on string
            if part == partition:
                if part.type == _('Unknown'):
                    filesystem = 'swap' if mount_point == SWAP_MOUNT_POINT else 'ext4'
                    break
    return filesystem


def get_release_name(mount_point=''):
    # Get the name of the live OS
    try:
        lsb_release = "{}/etc/lsb-release".format(mount_point)
        if path_exists(lsb_release):
            name = getoutput("grep DISTRIB_DESCRIPTION %s | awk -F'=' '{print $2}' | sed 's#\"##g'" % lsb_release)
        if name == '':
            os_release = "{}etc/os-release".format(mount_point)
            if path_exists(os_release):
                name = getoutput("grep PRETTY_NAME %s | awk -F'=' '{print $2}' | sed 's#\"##g'" % os_release)
        return name.strip()
    except:
        return ''


def manually_edit_partitions():
    """ Edit only known disks in gparted, selected one first """
    model, itr = installer.go("treeview_disks").get_selection().get_selected()
    preferred = model[itr][-1] if itr else ''  # prefer disk currently selected and show it first in gparted
    disks = ' '.join(sorted((disk for disk, desc, sdd, detachable in installer.setup.disks), key=lambda disk: disk != preferred))
    shell_exec('umount -f ' + disks)  # umount disks (if possible) so gparted works out-of-the-box
    shell_exec('gparted {} &'.format(disks))


def has_grub(path):
    cmd = "dd bs=512 count=1 if={} 2>/dev/null | strings".format(path)
    out = ' '.join(getoutput(cmd)).upper()
    if "GRUB" in out:
        print(("Grub installed on {}".format(path)))
        return True
    return False


def to_human_readable(size):
    for unit in ' kMGTPEZY':
        if size < 1000:
            return "{:.1f} {}B".format(size, unit)
        size /= 1000


def get_partition_label(path):
    cmd = "lsblk -o LABEL {} | grep -v LABEL | grep -v \"^$\"".format(path)
    try:
        return getoutput(cmd).strip()
    except:
        return ''


def has_efi_installed(path):
    shell_exec("mkdir -p %s.efi" % TMP_MOUNTPOINT)
    shell_exec("umount --force %s" % path)
    shell_exec("mount -t vfat %s %s.efi" % (path, TMP_MOUNTPOINT))
    # From python 3.5 (Jessie has 3.4):
    #from glob import iglob
    #if iglob('/mnt/**/grubx*.efi', recursive=True):
    ret = False
    for root, dirs, files in os.walk("/mnt"):
        if fnmatch.filter(files, 'grubx*.efi'):
            ret = True
    shell_exec("umount --force %s" % path)
    return ret


def is_ssd(path):
    dev = basename(path)[0:3]
    rotational = getoutput("cat /sys/block/%s/queue/rotational" % dev)
    if rotational == "0":
        return True
    return False


def is_detachable(path):
    udisks_detachable = getoutput("env LANG=C udisks --show-info %s | grep detachable | awk '{print $2}'" % path)
    if udisks_detachable == "1":
        return True
    return False


# ===================================================================
# Partition classes
# ===================================================================

class PartitionSetup(Gtk.TreeStore):
    def __init__(self):
        super(PartitionSetup, self).__init__(str,  # path
                                             bool,  # grub
                                             str,  # type (fs)
                                             str,  # volume label
                                             str,  # mount point
                                             str,  # format to
                                             bool,  # encrypt
                                             str,  # encryption passphrase
                                             str,  # size
                                             str,  # free space
                                             str,  # disk type (msdos or gpt)
                                             object,  # partition object
                                             str)  # disk device path
        installer.setup.partitions = []
        installer.setup.partition_setup = self
        self.html_disks, self.html_chunks = {}, defaultdict(list)
        self.full_disk_format_runonce = False

        def _get_attached_disks():
            disks = []
            exclude_devices = ['/dev/sr0', '/dev/sr1', '/dev/cdrom', '/dev/dvd']
            live_device = getoutput("findmnt -n -o source /lib/live/mount/findiso").split('\n')[0]
            live_device = re.sub('[0-9]+$', '', live_device) # remove partition numbers if any
            if live_device is not None and live_device.startswith('/dev/'):
                exclude_devices.append(live_device)
                print("Excluding %s (detected as the live device)" % live_device)
            lsblk = getoutput('LC_ALL=en_US.UTF-8 lsblk -rindo TYPE,NAME,RM,SIZE,MODEL | sort -k3,2')
            for line in lsblk:
                try:
                    type, dev, removable, size, model = line.split(" ", 4)
                    device = "/dev/" + dev
                    if type == "disk" and device not in exclude_devices:
                        # convert size to manufacturer's size for show, e.g. in GB, not GiB!
                        size = str(int(float(size[:-1]) * (1024/1000)**'BkMGTPEZY'.index(size[-1]))) + size[-1]
                        model = model.replace("\\x20", " ")
                        description = '{} ({}B)'.format(model.strip(), size)
                        if int(removable):
                            description = _('Removable:') + ' ' + description

                        # Is this device a SSD or pen drive?
                        ssd = is_ssd(device)
                        detachable = is_detachable(device)
                        disks.append((device, description, ssd, detachable))
                except:
                    pass
            return disks

        shell_exec('mkdir -p ' + TMP_MOUNTPOINT)
        installer.setup.gptonefi = is_efi_supported()
        installer.setup.disks = _get_attached_disks()
        print(('Disks: ', installer.setup.disks))
        already_done_full_disk_format = False

        for disk_path, disk_description, ssd, detachable in installer.setup.disks:
            try:
                # VMWare returns non-existing /dev/fd0
                disk_device = parted.getDevice(disk_path)
            except:
                # Try next disk
                continue

            try:
                disk = parted.Disk(disk_device)
            except Exception:
                dialog = QuestionDialog(_("Installation Tool"),
                                        _("No partition table was found on the hard drive: {disk_description}. Do you want the installer to create a set of partitions for you? Note: This will ERASE ALL DATA present on this disk.").format(**locals()),
                                        None,
                                        installer.window)
                if not dialog:
                    continue  # the user said No, skip this disk
                if not already_done_full_disk_format:
                    assign_mount_format = self.full_disk_format(disk_device)
                    already_done_full_disk_format = True
                else:
                    self.full_disk_format(disk_device) # Format but don't assign mount points
                disk = parted.Disk(disk_device)

            partitions = []
            parted_partitions = list(disk.getFreeSpacePartitions()) + \
                                list(disk.getPrimaryPartitions()) + \
                                list(disk.getLogicalPartitions()) + \
                                list(disk.getRaidPartitions()) + \
                                list(disk.getLVMPartitions())
            for partition in parted_partitions:
                if partition.getLength('MB') > 5:
                    partitions.append(Partition(partition))

            try: # assign mount_as and format_as if disk was just auto-formatted
                for partition, (mount_as, format_as) in zip(partitions, assign_mount_format):
                    partition.mount_as = mount_as
                    partition.format_as = format_as
                del assign_mount_format
            except NameError:
                pass

            disk_iter = self.append(None, ("{} ({})".format(disk_path, disk_description), False, '', '', '', '', False, '', '', '', '', None, disk_path))

            # Needed to fix the 1% minimum Partition.size_percent
            sum_size_percent = sum(p.size_percent for p in partitions) + .5  # .5 for good measure
            for partition in partitions:
                # Save disk type (used later to decide if boot flag is allowed)
                partition.disk_type = disk.type

                # Check partition for Grub
                if installer.setup.grub_device is None:
                    if has_grub(partition.path):
                        partition.grub = True
                        installer.setup.grub_device = partition.path

                partition.size_percent = round(partition.size_percent / sum_size_percent * 100, 1)
                installer.setup.partitions.append(partition)
                self.append(disk_iter, (partition.name,
                                        partition.grub,
                                        '<span foreground="{}">{}</span>'.format(partition.color, partition.type),
                                        partition.label,
                                        partition.mount_as,
                                        partition.format_as,
                                        partition.encrypt,
                                        partition.enc_passphrase,
                                        partition.size,
                                        partition.free_space,
                                        partition.disk_type,
                                        partition,
                                        disk_path))

            self.html_disks[disk_path] = DISK_TEMPLATE.format(PARTITIONS_HTML=''.join(PARTITION_TEMPLATE.format(p) for p in partitions))

        # If no Grub was found on any partition, check disks now
        # There might be an installed Grub from another distribution
        if installer.setup.grub_device is None:
            i = 0
            for disk_path, disk_description, ssd, detachable in installer.setup.disks:
                # Check if grub is installed on this disk
                if has_grub(disk_path):
                    installer.setup.grub_device = disk_path
                    self[i][1] = True
                    break
                i += 1

        # If no Grub was found anywhere: select first disk
        if installer.setup.grub_device is None \
            and len(installer.setup.disks) > 0 \
            and len(self) > 0:
            installer.setup.grub_device = installer.setup.disks[0][0]
            self[0][1] = True

    def get_html(self, disk):
        try:
            return self.html_disks[disk]
        except:
            return ''

    def full_disk_format(self, device):
        # Create a default partition set up
        disk_label = ('gpt' if device.getLength('B') > 2 ** 32 * .9 * device.sectorSize  # size of disk > ~2TB
                               or installer.setup.gptonefi
                            else 'msdos')
        separate_home_partition = device.getLength('GB') > 61

        # Only the first drive gets a swap, root, and/or home partition
        #if self.full_disk_format_runonce:
            #mkpart = (
                ## (condition, mount_as, format_as, size_mb)
                ## root
                #(True, '', 'ext4', 0),
            #)
        #else:
        mkpart = (
            # (condition, mount_as, format_as, mkfs command, size_mb)
            # EFI
            (installer.setup.gptonefi, EFI_MOUNT_POINT, 'vfat', 'mkfs.vfat {} -F 32 ', 300),
            # swap - equal to RAM for hibernate to work well (but capped at ~8GB)
            (True, SWAP_MOUNT_POINT, 'swap', 'mkswap {}', min(8800, int(round(1.1/1024 * int(getoutput("awk '/^MemTotal/{ print $2 }' /proc/meminfo")), -2)))),
            # root
            (True, '/', 'ext4', 'mkfs.ext4 -F {}', 30000 if separate_home_partition else 0),
            # home
            (separate_home_partition, '/home', 'ext4', 'mkfs.ext4 -F {}', 0),
        )
        run_parted = lambda cmd: os.system('parted --script --align optimal {} {} ; sync'.format(device.path, cmd))
        run_parted('mklabel ' + disk_label)
        start_mb = 2
        partition_number = 0
        for partition in mkpart:
            if partition[0]:
                partition_number = partition_number + 1
                mkfs = partition[3]
                size_mb = partition[4]
                end = '{}MB'.format(start_mb + size_mb) if size_mb else '100%'
                mkpart_cmd = 'mkpart primary {}MB {}'.format(start_mb, end)
                print(mkpart_cmd)
                run_parted(mkpart_cmd)
                mkfs = mkfs.format("%s%d" % (device.path, partition_number))
                print(mkfs)
                os.system(mkfs)
                start_mb += size_mb + 1
        if installer.setup.gptonefi:
            run_parted('set 1 boot on')
        elif not self.full_disk_format_runonce:
            # Set the boot flag for the root partition
            run_parted('set 2 boot on')
        # Save that the first drive has been configured
        self.full_disk_format_runonce = True
        return ((i[1], i[2]) for i in mkpart if i[0])


class Partition(object):
    def __init__(self, partition):
        assert partition.type not in (parted.PARTITION_METADATA, parted.PARTITION_EXTENDED)

        self.format_as = ''
        self.mount_as = ''
        self.label = ''
        self.encrypt = False
        self.enc_passphrase = ''
        # Initiate encryption status dictionary (even for non-encrypted partitions)
        self.enc_status = get_status(partition.path)
        self.grub = False
        self.disk_type = ''

        self.partition = partition
        self.path = partition.path
        self.length = partition.getLength()
        self.size_percent = max(1, round(80*self.length/partition.disk.device.getLength(), 1))
        self.size_mb = int(partition.getLength('B') / 1024 / 1024)
        self.size = to_human_readable(partition.getLength('B'))
        try:
            # This will crash on USB sticks
            self.flags = partition.getFlagsAsString().split(', ')
        except:
            self.flags = []

        # if not normal partition with /dev/sdXN path, set its name to '' and discard it from model
        self.name = self.path if partition.number != -1 else ''

        try:
            if is_encrypted(self.path):
                self.type = 'luks'
            else:
                self.type = partition.fileSystem.type
            for fs in ('swap', 'hfs', 'ufs'):  # normalize fs variations (parted.filesystem.fileSystemType.keys())
                if fs in self.type:
                    self.type = fs
            self.style = self.type
        except AttributeError:  # non-formatted partitions
            self.type = {
                parted.PARTITION_LVM: 'LVM',
                parted.PARTITION_SWAP: 'swap',
                parted.PARTITION_RAID: 'RAID',  # Empty space on Extended partition is recognized as this
                parted.PARTITION_PALO: 'PALO',
                parted.PARTITION_PREP: 'PReP',
                parted.PARTITION_LOGICAL: _('Logical partition'),
                parted.PARTITION_EXTENDED: _('Extended partition'),
                parted.PARTITION_FREESPACE: _('Free space'),
                parted.PARTITION_HPSERVICE: 'HP Service',
                parted.PARTITION_MSFT_RESERVED: 'MSFT Reserved',
            }.get(partition.type, _('Unknown'))
            self.style = {
                parted.PARTITION_SWAP: 'swap',
                parted.PARTITION_FREESPACE: 'freespace',
            }.get(partition.type, '')

        if "swap" in self.type:
            self.mount_as = SWAP_MOUNT_POINT
        if "fat" in self.type and installer.setup.gptonefi:
            if has_efi_installed(self.path) or 'boot' in self.flags:
                self.mount_as = EFI_MOUNT_POINT

        # identify partition's label and used space
        try:
            if is_encrypted(self.path):
                if not is_connected(self):
                    # Ask for password for encrypted partition and save it in enc_password
                    pwd = InputDialog(title=_("Encryption password"),
                                      text="{}\n\n{}".format(_("Password for the encrypted partition:"), self.path),
                                      is_password=True)
                    enc_passphrase = pwd.show()
                    self.enc_passphrase = enc_passphrase
                mapped_drv = connect_block_device(self)
                if is_connected(self):
                    self.enc_status = get_status(mapped_drv)
                    self.path = mapped_drv
                    self.name = mapped_drv
                    label = get_partition_label(mapped_drv)
                    shell_exec('mount --read-only {} {}'.format(mapped_drv, TMP_MOUNTPOINT))
            else:
                label = get_partition_label(self.path)
                shell_exec('mount --read-only {} {}'.format(self.path, TMP_MOUNTPOINT))
            size, free, self.used_percent, mount_point = getoutput("df {0} | grep '^{0}' | awk '{{print $2,$4,$5,$6}}' | tail -1".format(self.path)).split()
        except ValueError:
            print('WARNING: Partition {} or type {} failed to mount!'.format(self.path, self.type))
            self.os_fs_info, self.label, self.free_space, self.used_percent = ': '+self.type, '', '', 0
        else:
            self.size_mb = int(int(size) / 1024)
            self.size = to_human_readable(int(size) * 1024)  # for mountable partitions, more accurate than the getLength size above
            self.free_space = to_human_readable(int(free) * 1024)  # df returns values in 1024B-blocks by default
            self.used_percent = self.used_percent.strip('%') or 0
            # Had to rewrite label: multiple user errors
            if label == '':
                if path_exists(mount_point, 'etc/'):
                    try:
                        label = get_release_name(mount_point)
                        if label == '':
                            label = getoutput('uname -s')
                    except:
                        label = 'Unix'
                elif path_exists(mount_point, 'Windows/servicing/Version'):
                    label = 'Windows ' + {
                        '6.4':'10',
                        '6.3':'8.1',
                        '6.2':'8',
                        '6.1':'7',
                        '6.0':'Vista',
                        '5.2':'XP Pro x64',
                        '5.1':'XP',
                        '5.0':'2000',
                        '4.9':'ME',
                        '4.1':'98',
                        '4.0':'95',
                    }.get(getoutput('ls {}/Windows/servicing/Version'.format(mount_point))[:3], '')
                elif path_exists(mount_point, 'Boot/BCD'):
                    label = 'Windows recovery'
                elif path_exists(mount_point, 'Windows/System32'):
                    label = 'Windows'
                elif path_exists(mount_point, 'System/Library/CoreServices/SystemVersion.plist'):
                    label = 'Mac OS X'
                elif self.mount_as == EFI_MOUNT_POINT:
                    # Label on fat cannot be longer than 11 characters
                    label = 'EFI'
            self.label = label
            self.os_fs_info = ': {0.label} ({0.type}; {0.size}; {0.free_space})'.format(self) if label else ': ' + self.type
        finally:
            shell_exec('umount -f ' + TMP_MOUNTPOINT + ' 2>/dev/null')

        self.html_name = self.name.split('/')[-1]
        self.html_description = self.label
        if (self.size_percent < 10 and len(self.label) > 5):
            self.html_description = "%s..." % self.label[0:5]
        if (self.size_percent < 5):
            #Not enough space, don't write the name
            self.html_name = ""
            self.html_description = ""

        self.color = {
            # colors approximately from gparted (find matching set in usr/share/disk-partitions.html)
            'btrfs': '#636363',
            'exfat': '#47872a',
            'ext2':  '#2582a0',
            'ext3':  '#2582a0',
            'ext4':  '#21619e',
            'fat16': '#47872a',
            'fat32': '#47872a',
            'hfs':   '#636363',
            'jfs':   '#636363',
            'swap':  '#be3a37',
            'ntfs':  '#66a6a8',
            'reiserfs': '#636363',
            'ufs':   '#636363',
            'xfs':   '#636363',
            'zfs':   '#636363',
            'luks': '#3E3B4D',
            parted.PARTITION_EXTENDED: '#a9a9a9',
        }.get(self.type, '#a9a9a9')

    def print_partition(self):
        print("Device: %s (%s), format as: %s, mount as: %s, encrypt: %s" % (self.path, self.label, self.format_as, self.mount_as, self.encrypt))


class PartitionDialog(object):
    def __init__(self, partition, mount_as, format_as):
        self.partition = partition

        # Load window and widgets
        self.scriptName = basename(__file__)
        self.scriptDir = abspath(dirname(__file__))
        self.mediaDir = join(self.scriptDir, '../../share/live-installer-3')
        self.builder = Gtk.Builder()
        self.builder.add_from_file(join(self.mediaDir, 'live-installer-3-dialog.glade'))

        # Main window objects
        self.go = self.builder.get_object
        self.window = self.go("dialog")
        self.window.set_transient_for(installer.window)
        self.window.set_destroy_with_parent(True)
        self.window.set_modal(True)
        self.window.set_title(_("Edit partition"))
        self.loading = True
        self.txt_label = self.go("txt_label")
        self.cmb_mount_point = self.go("combobox_mount_point")
        self.cmb_use_as = self.go("combobox_use_as")

        # Translations
        self.go("label_partition").set_markup("<b>%s</b>" % _("Device"))
        self.go("label_use_as").set_markup(_("Format as"))
        self.go("label_mount_point").set_markup(_("Mount point"))
        self.go("label_label").set_markup(_("Label (optional)"))
        self.go("lbl_encryption").set_label(_("Encryption/password"))

        # Show the selected partition path
        self.go("label_partition_value").set_label(self.partition.path)

        # Encryption
        self.go("chk_encryption").set_active(partition.encrypt)
        if partition.encrypt:
            self.go("txt_encryption_passphrase").set_sensitive(True)
            self.go("txt_encryption_passphrase").set_text(partition.enc_passphrase)
        else:
            self.go("txt_encryption_passphrase").set_sensitive(False)
            self.go("txt_encryption_passphrase").set_text('')

        # Label
        label_len = 16
        if "fat" in partition.type or "fat" in partition.mount_as:
            label_len = 11
        self.txt_label.set_max_length(label_len)
        self.txt_label.set_text(partition.label)

        # Build list of pre-provided mountpoints
        mounts = " / /home /boot /boot/efi /srv /tmp /var swap".split(' ')
        self.cmb_mount_point.set_entry_text_column(0)
        for mount in mounts:
            self.cmb_mount_point.append_text(mount)

        # Build supported filesystems list
        filesystems = sorted(['', 'swap'] +
                             [fs[11:] for fs in getoutput('echo /sbin/mkfs.*').split()],
                             key=lambda x: 0 if x in ('', 'ext4') else 1 if x == 'swap' else 2)
        self.cmb_use_as.set_entry_text_column(0)
        for fs in filesystems:
            self.cmb_use_as.append_text(fs)

        select_combobox_value(self.cmb_mount_point, mount_as)
        select_combobox_value(self.cmb_use_as, format_as)

        # Connect builder signals and show window
        self.builder.connect_signals(self)
        self.window.show_all()

        self.loading = False

    def on_combobox_mount_point_changed(self, widget):
        mount_as = get_combox_value(widget)
        if "boot" in mount_as:
            # Cannot encrypt
            self.go("chk_encryption").set_active(False)
            self.go("chk_encryption").set_sensitive(False)
            self.go("txt_encryption_passphrase").set_sensitive(False)
            self.go("txt_encryption_passphrase").set_text('')
        else:
            # Can encrypt
            self.loading = True
            self.go("chk_encryption").set_sensitive(True)
            self.loading = False

        # Set label for OS
        if self.txt_label.get_text() == '':
            if mount_as == '/':
                self.txt_label.set_text(get_release_name())

        # swap
        if mount_as == 'swap' and self.partition.type != 'swap':
            select_combobox_value(self.cmb_use_as, 'swap')

        # efi
        if 'efi' in mount_as and 'fat' not in self.partition.type:
            select_combobox_value(self.cmb_use_as, 'vfat')

    def on_combobox_use_as_changed(self, widget):
        format_as = get_combox_value(widget)
        mount_as = get_combox_value(self.cmb_mount_point)
        if format_as == 'swap' and mount_as != 'swap':
            select_combobox_value(self.cmb_mount_point, 'swap')

    def on_button_cancel_clicked(self, widget):
        # Close window without saving
        self.window.hide()

    def on_chk_encryption_toggled(self, widget):
        if self.loading: return
        if widget.get_active():
            # Show warning message
            mount_as = get_combox_value(self.cmb_mount_point)
            if mount_as == '/':
                encrypt = QuestionDialog(_("Encryption"),
                                         _("You chose to encrypt the root partition.\n\n"
                                           "You will need to mount /boot on a separate non-encrypted partition (500 MB).\n"
                                           "Without a non-encrypted /boot partition your system will be unbootable.\n\n"
                                           "Encryption will erase all data from {}\n\n"
                                           "Are you sure you want to continue?").format(self.partition.path))
            else:
                encrypt = QuestionDialog(_("Encryption"),
                                         _("Encryption will erase all data from {}\n\n"
                                           "Are you sure you want to continue?").format(self.partition.path))
            if encrypt:
                format_as = get_combox_value(self.cmb_use_as)
                if not format_as:
                    select_combobox_value(self.cmb_use_as, 'ext4')
                self.go("txt_encryption_passphrase").set_sensitive(True)
                self.go("txt_encryption_passphrase").set_text(self.partition.enc_passphrase)
                self.go("txt_encryption_passphrase").grab_focus()
            else:
                widget.set_active(False)
                self.go("txt_encryption_passphrase").set_sensitive(False)
                self.go("txt_encryption_passphrase").set_text("")
        else:
            self.go("txt_encryption_passphrase").set_sensitive(False)
            self.go("txt_encryption_passphrase").set_text("")

    def on_button_ok_clicked(self, widget):
        # Collect data
        format_as = get_combox_value(self.cmb_use_as)
        mount_as = get_combox_value(self.cmb_mount_point)
        encrypt = self.go("chk_encryption").get_active()
        enc_passphrase = self.go("txt_encryption_passphrase").get_text().strip()
        label = self.txt_label.get_text().strip()

        # Check user input
        if encrypt:
            if not enc_passphrase:
                ErrorDialog(_("Encryption"),
                            "{} {}".format(_("Provide an encryption password for partition:"), self.partition.path))
                return True
            if not format_as:
                ErrorDialog(_("Encryption"),
                              "{} {}".format(_("You need to choose a format type\n"
                              "for your encrypted partition (default: ext4):"), self.partition.path))
                select_combobox_value(self.cmb_use_as, 'ext4')
                return True
            if not mount_as:
                ErrorDialog(_("Encryption"),
                              "{} {}".format(_("You need to choose a mount point for partition:"), self.partition.path))
                return True
        else:
            # For good measure
            enc_passphrase = ''

        # Save the settings and close the window
        assign_mount_point(self.partition, mount_as, format_as, encrypt, enc_passphrase, label)
        self.window.hide()

    def on_dialog_delete_event(self, widget, data=None):
        self.window.hide()
        return True
