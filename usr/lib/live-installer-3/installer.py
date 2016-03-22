#! /usr/bin/python3

# Optionally skip all mouting/partitioning for advanced users with custom setups (raid/dmcrypt/etc)
# Make sure the user knows that they need to:
#  * Mount their target directory structure at /target
#  * NOT mount /target/dev, /target/dev/shm, /target/dev/pts, /target/proc, and /target/sys
#  * Manually create /target/etc/fstab after init_install has completed and before finish_install is called
#  * Install cryptsetup/dmraid/mdadm/etc in target environment (using chroot) between init_install and finish_install
#  * Make sure target is mounted using the same block device as is used in /target/etc/fstab (eg if you change the name of a dm-crypt device between now and /target/etc/fstab, update-initramfs will likely fail)

from utils import shell_exec, shell_exec_popen, getoutput, chroot_exec, \
                  get_config_dict, has_internet, in_virtualbox, \
                  get_boot_parameters, get_files_from_dir
from localize import Localize
from encryption import clear_partition, encrypt_partition
from partitioning import get_partition_label
import os
from os.path import exists, isdir, basename, getmtime, isfile
import time
import sys
import threading
from logger import Logger

CONFIG_FILE = '/etc/live-installer-3/live-installer-3.conf'

(ERROR,
WARNING,
UPDATE,
PAUSE
) = list(range(4))


class InstallerEngine(threading.Thread):
    def __init__(self, theQueue, setup):
        super(InstallerEngine, self).__init__()
        # Create a pause event
        self.pause_event = threading.Event()
        # Save the parameters
        self.queue = theQueue
        self.setup = setup
        # Set other configuration
        self.boot_parms = get_boot_parameters()
        self.live_user = self.setup.config.get('live_user', 'user')
        self.media = self.setup.config.get('live_media_source',
                                     '/lib/live/mount/medium/live/filesystem.squashfs')
        self.media_type = self.setup.config.get('live_media_type', 'squashfs')
        self.critical_error_happened = False
        self.our_total = 0
        self.our_current = 0
        self.ssd = False
        self.detachable = False
        self.ssd_partition = ""
        self.sorted_partitions = []

        # Log
        self.log = Logger("/var/log/live-installer-3.log")
        if self.setup.oem_setup:
            self.log.write(">>> OEM User Setup <<<", "InstallerEngine.init")
        else:
            self.log.write(">>> Live Installation <<<", "InstallerEngine.init")

        manual_partitions = []
        if self.setup.skip_mount and not self.setup.oem_setup:
            # Create partition objects with the information of the manually mounted partitions
            manual_mounts = getoutput("cat /proc/mounts | grep -Ev '%s/dev|%s/sys|%s/proc' | grep %s" % (self.setup.target_dir, self.setup.target_dir, self.setup.target_dir, self.setup.target_dir), always_as_list=True)
            if manual_mounts[0] != '':
                try:
                    for manual_mount in manual_mounts:
                        device_info = manual_mount.split(" ")
                        if device_info:
                            # 0 = partition path, 1 = mount_as, 2 = fs type
                            path = device_info[0]
                            self.log.write("Find manual mount {} in known partitions".format(path), "InstallerEngine.init")
                            mount_as = device_info[1].replace(self.setup.target_dir, "/").replace("//", "/")
                            for partition in self.setup.partitions:
                                if partition.path == path:
                                    self.log.write("Manual mount {} found will be mounted as {} with type {}".format(path, mount_as, partition.type), "InstallerEngine.init")
                                    partition.mount_as = mount_as
                                    if "/boot" in partition.mount_as:
                                       self.setup.boot_partition = partition.path
                                    manual_partitions.append(partition)
                except:
                    self.log.write("Could not handle manual mounts - exiting", "InstallerEngine.init", "exception")
                    return
            else:
                self.log.write("Nothing mounted on %s - exiting" % self.setup.target_dir, "InstallerEngine.init", "error")
                return

        # Sort the partitions (needed for right order of mounting/unmounting
        mounts = []
        partitions = self.setup.partitions
        if manual_partitions:
            self.log.write("Use manually mounted partitions", "InstallerEngine.init")
            partitions = manual_partitions
        for partition in partitions:
            # Get and sort mount partition information
            if partition.mount_as:
                mounts.append(partition.mount_as)
        # Sort mounts
        mounts.sort()
        for mount in mounts:
            for partition in partitions:
                if mount == partition.mount_as:
                    self.log.write("Add mount {} to sorted partitions".format(mount), "InstallerEngine.init")
                    self.sorted_partitions.append(partition)

        # Check if mounted root is ssd of detachable
        for partition in self.sorted_partitions:
            if partition.mount_as == '/':
                path = partition.path
                if "/dev/mapper" in path:
                    path = partition.enc_status['device']
                # Check if we need to treat this disk as an SSD
                for disk in self.setup.disks:
                    self.log.write("Check disk {} for ssd".format(disk), "InstallerEngine.init")
                    if disk[0] in path:
                        self.ssd = disk[2]
                        self.detachable = disk[3]
                        self.ssd_partition = partition.path
                        self.log.write("disk={}, ssd={}, detachable={}".format(disk[0], self.ssd, self.detachable), "InstallerEngine.init")
                        break
                break

    def pause(self):
        self.pause_event.set()

    def unpause(self):
        self.pause_event.clear()

    def run(self):
        self.critical_error_happened = False
        do_try_finish_install = True
        try:
            self.init_install()
        except Exception as detail1:
            self.log.write(detail1, "InstallerEngine.run")
            do_try_finish_install = False
            self.show_dialog(ERROR,
                           _("Installation error"),
                           str(detail1))

        if self.critical_error_happened:
            do_try_finish_install = False

        if do_try_finish_install:
            if self.setup.skip_mount:
                self.pause()
                self.log.write("Thread has been paused", "InstallerEngine.run")
                msg = "%s\n\n%s\n%s" % (_("Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation."),
                                        _("Verify that fstab is correct (use blkid to check the UUIDs)."),
                                        _("A chrooted terminal and fstab will be opened after you close this message."))
                self.show_dialog(PAUSE,
                               _("Installation paused"),
                               msg)
                while self.pause_event.is_set():
                    time.sleep(1)
                self.log.write("Thread has been unpaused from main thread", "InstallerEngine.run")

            try:
                self.finish_install()
            except Exception as detail1:
                self.log.write(detail1, "InstallerEngine.run")
                self.show_dialog(ERROR,
                               _("Installation error"),
                               str(detail1))

    def update_progress(self, fail=False, done=False, pulse=False, total=0, current=0, message=""):
        self.log.write(message, "InstallerEngine.update_progress", "info")
        info_list = [UPDATE, fail, done, pulse, total, current, message]
        self.queue.put(info_list)

    def show_dialog(self, dialog_type=ERROR, title="", message=""):
        if dialog_type == ERROR:
            self.critical_error_happened = True
        self.queue.put([dialog_type, title, message])

    def step_boot_prepare(self):
        for partition in self.sorted_partitions:
            # Set boot flag for partition
            if self.setup.boot_partition is not None:
                bootDisk = self.setup.boot_partition[0:-1]
                partDisk = partition.path[0:-1]
                if self.setup.boot_partition == partition.path:
                    partNr = self.setup.boot_partition[-1]
                    self.log.write("Set boot flag on disk {}, partition {}".format(bootDisk, partNr), "InstallerEngine.step_boot_prepare")
                    cmd = "parted --script --align optimal {} set {} boot on; sync".format(bootDisk, partNr)
                    self.local_exec(cmd)
                elif bootDisk != partDisk:
                    if 'boot' in partition.flags:
                        partNr = partition.path[-1]
                        self.log.write("Remove boot flag from disk {}, partition {}".format(partDisk, partNr), "InstallerEngine.step_boot_prepare")
                        cmd = "parted --script --align optimal {} set {} boot off; sync".format(partDisk, partNr)
                        self.local_exec(cmd)

    def step_format_partitions(self):
        for partition in self.sorted_partitions:
            if partition.format_as is not None and partition.format_as != "":
                # Encrypt partition when needed
                if partition.encrypt:
                    msg = _("Encrypting %(partition)s ..." % {'partition':partition.enc_status["device"]})
                    self.update_progress(total=4, current=1, pulse=True, message=msg)
                    clear_partition(partition)
                    partition.path = encrypt_partition(partition)

                # report it. should grab the total count of filesystems to be formatted ..
                msg = _("Formatting %(partition)s as %(format)s ..." % {'partition':partition.path, 'format':partition.format_as})
                self.update_progress(total=4, current=2, pulse=True, message=msg)

                # Check if a previous LUKS partition needs closing first
                if partition.path == partition.enc_status['device'] and \
                   exists(partition.enc_status['active']):
                       mapped_name = basename(partition.enc_status['active'])
                       self.local_exec("cryptsetup close {}".format(mapped_name))

                #Format it
                if partition.format_as == "swap":
                    cmd = "mkswap %s" % partition.path
                elif partition.format_as[:3] == 'ext':
                    cmd = "mkfs.%s -F -q %s" % (partition.format_as, partition.path)
                elif partition.format_as == "jfs":
                    cmd = "mkfs.%s -q %s" % (partition.format_as, partition.path)
                elif partition.format_as == "xfs":
                    cmd = "mkfs.%s -f %s" % (partition.format_as, partition.path)
                elif partition.format_as == "vfat":
                    cmd = "mkfs.%s %s -F 32" % (partition.format_as, partition.path)
                else:
                    cmd = "mkfs.%s %s" % (partition.format_as, partition.path) # works with bfs, btrfs, minix, msdos, ntfs

                self.local_exec(cmd)

                partition.type = partition.format_as

            # Set the label of the partition
            newLabel = partition.label[0:16].strip()
            curLabel = get_partition_label(partition.path)[0:16].strip()
            if newLabel != "" and curLabel != newLabel:
                if "fat" in partition.type:
                    cmd = "echo \"mtools_skip_check=1\" > ~/.mtoolsrc; sudo mlabel ::\"{}\" -i {}; rm ~/.mtoolsrc".format(newLabel, partition.path)
                else:
                    cmd = "e2label {} \"{}\"".format(partition.path, newLabel)
                try:
                    self.local_exec(cmd)
                except:
                    self.log.write("Could not write label \"{}\" to partition {}".format(partition.label, partition.path), "InstallerEngine.step_format_partitions")

    def step_mount_source(self):
        # Mount the installation media
        self.log.write(" --> Mounting partitions", "InstallerEngine.step_mount_source", "info")
        msg = _("Mounting %(partition)s on %(mountpoint)s") % {'partition':self.media, 'mountpoint':"/source/"}
        self.update_progress(total=4, current=3, message=msg)
        self.do_mount(self.media, "/source/", self.media_type, options="loop")

    def step_mount_partitions(self):
        # Mount source
        self.step_mount_source()

        # Mount the sorted partitions
        for partition in self.sorted_partitions:
            if "/" in partition.mount_as:
                target = self.setup.target_dir
                if partition.mount_as != "/":
                    target += partition.mount_as
                msg = _("Mounting %(partition)s on %(mountpoint)s") % {'partition':partition.path, 'mountpoint':target}
                self.update_progress(total=4, current=4, message=msg)
                self.local_exec("mkdir -p %s 2>/dev/null" % target)
                partition_type = partition.type
                if partition_type.startswith('fat'):
                    partition_type = 'vfat'
                elif partition_type == 'luks':
                    partition_type = partition.enc_status['filesystem']
                self.do_mount(partition.path, target, partition_type, None)

    def init_install(self):
        self.log.write(" --> Installation started", "InstallerEngine.init_install", "info")
        if not self.setup.oem_setup:
            # mount the media location.
            if not exists(self.setup.target_dir):
                if self.setup.skip_mount:
                    msg = _("You must first manually mount your target filesystem(s) at %s to do a custom install!" % self.setup.target_dir)
                    self.log.write(msg, "InstallerEngine.init_install")
                    self.show_dialog(ERROR,
                                   _("Not mounted"),
                                    msg)
                    return
                os.mkdir(self.setup.target_dir)
            if not exists("/source"):
                os.mkdir("/source")
            # find the squashfs..
            if not exists(self.media):
                msg = _("Something is wrong with the installation medium! This is usually caused by burning tools which are not compatible with {}. Please burn the ISO image to DVD/USB using a different tool.".format(self.setup.distribution_name))
                self.log.write(msg, "InstallerEngine.init_install")
                self.show_dialog(ERROR,
                               _("Base filesystem does not exist"),
                                msg)
                return

            self.local_exec("umount --force %s/dev/shm" % self.setup.target_dir)
            self.local_exec("umount --force %s/dev/pts" % self.setup.target_dir)
            self.local_exec("umount --force %s/dev/" % self.setup.target_dir)
            self.local_exec("umount --force %s/sys/fs/fuse/connections" % self.setup.target_dir)
            self.local_exec("umount --force %s/sys/" % self.setup.target_dir)
            self.local_exec("umount --force %s/proc/" % self.setup.target_dir)

            if not self.setup.skip_mount:
                self.step_boot_prepare()
                self.step_format_partitions()
                self.step_mount_partitions()
            else:
                self.step_mount_source()

            # # Preserve /root if it exists
            if isdir("%s/root" % self.setup.target_dir):
                # shutil.copytree gave errors on kde cache files
                self.local_exec("cp -r %s/root /tmp/" % self.setup.target_dir)

            # Transfer the files
            self.our_current = 0
            prev_sec = -1
            SOURCE = "/source/"
            DEST = "%s/" % self.setup.target_dir
            EXCLUDE_DIRS = "home/* dev/* proc/* sys/* tmp/* run/* mnt/* media/* lost+found source".split()

            # assume: #(files to copy) ~= #(used inodes on /)
            self.our_total = int(getoutput("df --inodes /{src} | awk '/^.+?\/{src}$/{{ print $3 }}'".format(src=SOURCE.strip('/'))))
            self.log.write(" --> Copying {} files".format(self.our_total), "InstallerEngine.init_install", "info")
            rsync_filter = ' '.join('--exclude=' + SOURCE + d for d in EXCLUDE_DIRS)
            rsync = shell_exec_popen("rsync --ignore-errors --verbose --archive --no-D --acls "
                               "--hard-links --xattrs {rsync_filter} "
                               "{src}* {dst}".format(src=SOURCE, dst=DEST, rsync_filter=rsync_filter))

            # Check the output of rsync
            while rsync.poll() is None:
                # Cleanup the line: only path of file to be copied
                line = rsync.stdout.readline().strip()
                try:
                    line = line[0:line.index(' ')]
                except:
                    pass
                if not line:
                    time.sleep(0.1)
                else:
                    self.our_current = min(self.our_current + 1, self.our_total)

                    # Check if localtime is on the second to prevent flooding the queue
                    sec = time.localtime()[5]
                    if sec != prev_sec:
                        self.update_progress(total=self.our_total, current=self.our_current, message="{} {}".format(_("Copying"), line))
                        prev_sec = sec

            rsync_return_code = rsync.poll()
            if rsync_return_code > 0:
                self.log.write("rsync exited with returncode: %s" % str(rsync_return_code), "InstallerEngine.init_install", "error")
                sys.exit()

            # Restore /root if it was preserved
            if isdir("/tmp/root"):
                if isdir("%s/root" % self.setup.target_dir):
                    self.local_exec("mv %s/root /tmp/root.install" % self.setup.target_dir)
                self.local_exec("mv /tmp/root %s/" % self.setup.target_dir)

            # Steps:
            self.our_total = 4 + 9
            self.our_current = 0
            # chroot
            self.log.write(" --> Chrooting", "InstallerEngine.init_install", "info")
            self.update_progress(total=self.our_total, current=self.our_current, message=_("Entering the system ..."))
            self.local_exec("mount --bind /dev/ %s/dev/" % self.setup.target_dir)
            self.local_exec("mount --bind /dev/shm %s/dev/shm" % self.setup.target_dir)
            self.local_exec("mount --bind /dev/pts %s/dev/pts" % self.setup.target_dir)
            self.local_exec("mount --bind /sys/ %s/sys/" % self.setup.target_dir)
            self.local_exec("mount --bind /proc/ %s/proc/" % self.setup.target_dir)
            self.local_exec("mv %s/etc/resolv.conf %s/etc/resolv.conf.bk" % (self.setup.target_dir, self.setup.target_dir))
            self.local_exec("cp -f /etc/resolv.conf %s/etc/resolv.conf" % self.setup.target_dir)

            kernelversion = getoutput("uname -r")
            self.local_exec("cp /lib/live/mount/medium/live/vmlinuz %s/boot/vmlinuz-%s" % (self.setup.target_dir, kernelversion))
            found_initrd = False
            for initrd in ["/lib/live/mount/medium/live/initrd.img", "/lib/live/mount/medium/live/initrd.lz"]:
                if exists(initrd):
                    self.local_exec("cp %s %s/boot/initrd.img-%s" % (self.setup.target_dir, initrd, kernelversion))
                    found_initrd = True
                    break

            if not found_initrd:
                self.log.write("No initrd found!", "InstallerEngine.init_install", "error")

            if self.setup.gptonefi:
                self.our_total += 1
                self.our_current += 1
                self.log.write(" --> Installing EFI packages", "InstallerEngine.init_install", "info")
                self.update_progress(total=self.our_total, current=self.our_current, message=_("Installing EFI packages..."))

                self.local_exec("mkdir -p %s/debs" % self.setup.target_dir)
                self.local_exec("cp /lib/live/mount/medium/offline/*efi*.deb %s/debs/" % self.setup.target_dir)
                ret = self.exec_cmd("dpkg --force-confdef --force-confnew --force-depends --force-overwrite -i /debs/*.deb")
                self.local_exec("rm -rf %s/debs" % self.setup.target_dir)
                if int(ret) != 0:
                    if has_internet():
                        self.exec_cmd("apt-get remove --purge --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes grub-efi")
                    # TODO: Errors were reported after installing grub-efi and leaving grub-pc
                    # (although it should have been removed in the previous process)
                    self.exec_cmd("apt-get remove --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes grub-pc")
                    self.exec_cmd("apt-get -f install --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes")

            # Detect cdrom device
            # TODO : properly detect cdrom device
            # Mount it
            # os.system("mkdir -p %s/media/cdrom" % self.setup.target_dir)
            # if int(os.system("mount /dev/sr0 %s/media/cdrom" % self.setup.target_dir)):
            #     print " --> Failed to mount CDROM. Install will fail"
            # self.exec_cmd("apt-cdrom -o Acquire::cdrom::AutoDetect=false -m add")

            # Install offline Broadcom drivers
            installBroadcom = False
            ddm_path = '/usr/bin/ddm'
            if exists(ddm_path):
                device_ids = getoutput("lspci -n -d 14e4: | awk '{print $3}' | cut -d':' -f 2", True)
                if device_ids:
                    #print "Broadcom deviceids: {}".format(' '.join(device_ids))
                    wl_ids = getoutput("cat {} | grep 'WLDEBIAN=' | cut -d'=' -f 2".format(ddm_path)).split('|')
                    for did in device_ids:
                        did = did.strip()
                        for wl_id in wl_ids:
                            if did == wl_id:
                                self.log.write("Supported Broadcom deviceid found: {}".format(did), "InstallerEngine.init_install", "info")
                                installBroadcom = True
                                break
                        if installBroadcom:
                            break

            if installBroadcom:
                self.our_total += 1
                self.our_current += 1
                self.log.write(" --> Installing drivers", "InstallerEngine.init_install", "info")
                self.update_progress(total=self.our_total, current=self.our_current, message=_("Installing drivers"))
                self.local_exec("mkdir -p %s/debs" % self.setup.target_dir)
                self.local_exec("cp /lib/live/mount/medium/offline/broadcom*.deb %s/debs/" % self.setup.target_dir)
                self.exec_cmd("dpkg --force-confdef --force-confnew --force-depends --force-overwrite -i /debs/*.deb")
                self.exec_cmd("modprobe wl")
                self.local_exec("rm -rf %s/debs" % self.setup.target_dir)
                with open("%s/etc/modprobe.d/blacklist-broadcom.conf" % self.setup.target_dir, "w") as conf:
                    conf.write('blacklist b43 brcmsmac bcma ssb')

        # add new user
        self.log.write(" --> Adding new user", "InstallerEngine.init_install", "info")
        self.our_current += 1
        self.update_progress(total=self.our_total, current=self.our_current, message=_("Adding new user to the system"))
        self.exec_cmd('adduser --disabled-login --gecos "{real_name}" {username}'.format(real_name=self.setup.real_name.replace('"', r'\"'), username=self.setup.username))
        for group in 'adm audio bluetooth cdrom dialout dip fax floppy fuse lpadmin netdev plugdev powerdev sambashare scanner sudo tape users vboxsf video'.split():
            self.exec_cmd("adduser {user} {group}".format(user=self.setup.username, group=group))

        # Double check if the user directory exists
        # Had this when setting a previously encrypted partition to /home
        user_dir = "%s/home/%s" % (self.setup.target_dir, self.setup.username)
        if not exists(user_dir):
            self.log.write("Create user dir: {}".format(user_dir), "InstallerEngine.init_install", "info")
            self.local_exec("mkdir {}".format(user_dir))
            self.local_exec("cp -R /etc/skel/.* {}/".format(user_dir))
            self.local_exec("chown -R {}:{} {}".format(self.setup.username, self.setup.username, user_dir))

        # Save passwords
        # Using a temporary file fails for the new user (but correctly sets the root's password)
        # Using mkpasswd prevents not setting a password when special characters like $ or " are used
        pwd = getoutput("mkpasswd '{}'".format(self.setup.password1))
        self.log.write("Encrypt password {} for user {} to {}".format(self.setup.password1, self.setup.username, pwd), "InstallerEngine.init_install")
        self.exec_cmd("echo '{}:{}' | chpasswd -e".format(self.setup.username, pwd))
        self.exec_cmd("echo 'root:{}' | chpasswd -e".format(pwd))

        # Set autologin for user if they so elected
        if self.setup.autologin:
            # LightDM
            self.exec_cmd(r"sed -i -r 's/^#?(autologin-user)\s*=.*/\1={user}/' /etc/lightdm/lightdm.conf".format(user=self.setup.username))
            # MDM
            self.exec_cmd(r"sed -i -r -e '/^AutomaticLogin(Enable)?\s*=/d' -e 's/^(\[daemon\])/\1\nAutomaticLoginEnable=true\nAutomaticLogin={user}/' /etc/mdm/mdm.conf".format(user=self.setup.username))
            # GDM3
            self.exec_cmd(r"sed -i -r -e '/^(#\s*)?AutomaticLogin(Enable)?\s*=/d' -e 's/^(\[daemon\])/\1\nAutomaticLoginEnable=true\nAutomaticLogin={user}/' /etc/gdm3/daemon.conf".format(user=self.setup.username))
            # KDE4
            self.exec_cmd(r"sed -i -r -e 's/^#?(AutomaticLoginEnable)\s*=.*/\1=true/' -e 's/^#?(AutomaticLoginUser)\s*.*/\1={user}/' /etc/kde4/kdm/kdmrc".format(user=self.setup.username))
            # LXDM
            self.exec_cmd(r"sed -i -r -e 's/^#?(autologin)\s*=.*/\1={user}/' /etc/lxdm/lxdm.conf".format(user=self.setup.username))
            # SLiM
            self.exec_cmd(r"sed -i -r -e 's/^#?(default_user)\s.*/\1  {user}/' -e 's/^#?(auto_login)\s.*/\1  yes/' /etc/slim.conf".format(user=self.setup.username))
        else:
            # LightDM uses autologin in live session
            self.exec_cmd(r"sed -i -r 's/^#?(autologin-user)\s*=.*/\1=/' /etc/lightdm/lightdm.conf")

        # Add user's face
        self.local_exec("cp /tmp/live-installer-3-face.png %s/home/%s/.face" % (self.setup.target_dir, self.setup.username))
        self.exec_cmd("chown %s:%s /home/%s/.face" % (self.setup.username, self.setup.username, self.setup.username))

        # write the /etc/fstab and /etc/crypttab
        if not self.setup.oem_setup:
            self.our_current += 1
            self.update_progress(total=self.our_total, current=self.our_current, message=_("Writing filesystem mount information to /etc/fstab"))
            if not exists("%s/etc/fstab" % self.setup.target_dir):
                self.local_exec("echo -e '# <file system>\t<mount point>\t<type>\t<options>\t<dump>\t<pass>' > %s/etc/fstab" % self.setup.target_dir)

            # Configure the system
            # Check UUIDs
            border = '=' * 25
            self.log.write("{}\n>> Compare fstab/crypttab UUIDS with blkid output <<\n"
                           "fstab: /dev/mapper/sdXY UUIDs, crypttab: /dev/sdXY UUIDS\n"
                           "{} blkid {}\n{}\n{}\n".format(border * 2, border, border,
                           "\n".join(getoutput("blkid")), border * 2), "InstallerEngine.init_install", "info")

            fstab_path = "%s/etc/fstab" % self.setup.target_dir
            crypttab_path = "%s/etc/crypttab" % self.setup.target_dir
            mount_name = ''

            for partition in self.sorted_partitions:
                if not partition.mount_as:
                    continue
                partition_type = partition.type
                if partition_type.startswith('fat'):
                    partition_type = 'vfat'
                elif partition_type == 'luks':
                    partition_type = partition.enc_status['filesystem']
                self.write_fstab(fstab_path, partition.path, partition.mount_as, partition_type)

                # crypttab
                if partition.encrypt or partition.type == 'luks':
                    if partition.enc_status['device'] != '':
                        mount_name = basename(partition.path)
                        self.write_crypttab(crypttab_path, partition.enc_status['device'], mount_name)

            # Configure system for SSD or installing to detachable device
            if self.ssd or self.detachable:
                # SDD optimization
                ram = "\n# RAM disks\n" \
                "tmpfs   /tmp                    tmpfs   defaults,noatime,mode=1777              0       0\n" \
                "tmpfs   /var/tmp                tmpfs   defaults,noatime                        0       0\n" \
                "tmpfs   /var/log                tmpfs   defaults,noatime                        0       0\n" \
                "tmpfs   /var/log/apt            tmpfs   defaults,noatime                        0       0\n" \
                "tmpfs   /var/cache/apt/archives tmpfs   defaults,noexec,nosuid,nodev,mode=0755  0       0\n"
                with open(fstab_path, "a") as fstab:
                    fstab.write(ram)

                # Fstrim
                fstrim_path = "%s/etc/cron.weekly/fstrim_job" % self.setup.target_dir
                fstrim_cont = "#!/bin/sh\n" \
                              "for fs in $(lsblk -o MOUNTPOINT,DISC-MAX,FSTYPE | grep -E '^/.* [1-9]+.* ' | awk '{print $1}'); do\n" \
                              "  fstrim \"$fs\"\n" \
                              "done\n"
                with open(fstrim_path, "w") as fstrim:
                    fstrim.write(fstrim_cont)
                self.local_exec("chmod +x {}".format(fstrim_path))

                # Swappiness
                swappiness_path = "%s/etc/sysctl.d/sysctl.conf" % self.setup.target_dir
                swappiness_cont = "vm.swappiness=1\n" \
                                  "vm.vfs_cache_pressure=25\n" \
                                  "vm.dirty_ratio=50\n" \
                                  "vm.dirty_background_ratio=3\n"
                with open(swappiness_path, "w") as swappiness:
                    swappiness.write(swappiness_cont)

                # Sysfs
                sysfs_path = "%s/etc/sysfs.conf" % self.setup.target_dir
                sysfs_cont = "block/{}/queue/scheduler=deadline\n".format(basename(self.ssd_partition))
                with open(sysfs_path, "w") as sysfs:
                    sysfs.write(sysfs_cont)

                # Browser RAM cache
                cache_path = "%s/etc/profile.d/browser-cache.sh" % self.setup.target_dir
                cache_cont = "# Create RAM cache for Firefox\n" \
                             "USERIDS=$(cat /etc/passwd | grep bash | grep home | cut -d':' -f 3)\n" \
                             "for ID in $USERIDS; do\n" \
                             "  mkdir -p \"/run/user/$ID/firefox-cache\" &\n" \
                             "  sleep 1\n" \
                             "  mkdir -p \"/run/user/$ID/chromium-cache\" &\n" \
                             "  sleep 1\n" \
                             "done\n"
                with open(cache_path, "w") as cache:
                    cache.write(cache_cont)
                # Only configure browser RAM cache for user on a pen drive
                if self.detachable:
                    prefs_path = "%s/home/%s/.mozilla/firefox/mwad0hks.default/prefs.js" % (self.setup.target_dir, self.setup.username)
                    if exists(prefs_path):
                        # Save to prefs file
                        prefs_cont = "user_pref(\"browser.cache.disk.parent_directory\", \"/run/user/1000/firefox-cache\");"
                        with open(prefs_path, "a") as prefs:
                            prefs.write(prefs_cont)

            # Show the fstab contents
            with open(fstab_path, "r") as fstab:
                self.log.write("{} fstab {}\n{}\n{}\n".format(border, border, fstab.read(), border *2), "InstallerEngine.init_install", "info")

            # Show the crypttab contents
            if mount_name != '':
                with open(crypttab_path, "r") as crypttab:
                    self.log.write("{} crypttab {}\n{}\n{}\n".format(border, border, crypttab.read(), border * 2), "InstallerEngine.init_install", "info")

    def local_exec(self, command):
        shell_exec(command, self.log)

    def exec_cmd(self, command):
        if self.setup.oem_setup:
            return self.local_exec(command)
        else:
            return chroot_exec(command, self.setup.target_dir)

    def write_fstab(self, fstab_path, partition_path, partition_mount_as, partition_type):
        extOpts = 'rw,errors=remount-ro'
        if self.ssd or self.detachable:
            extOpts = 'rw,errors=remount-ro,noatime'
        uuid = "UUID=%s" % getoutput('blkid -s UUID -o value ' + partition_path) or partition_path
        fsck = 0 if partition_type in ('ntfs', 'swap', 'vfat') else 1 if partition_mount_as == '/' else 2
        opts = extOpts if 'ext' in partition_type else 'sw' if partition_type == 'swap' else 'defaults'
        with open(fstab_path, "a") as fstab:
            fstab.write('%s\t%s\t%s\t%s\t0\t%s\n' % (uuid, partition_mount_as, partition_type, opts, fsck))

    def write_crypttab(self, crypttab_path, device, mount_name):
            crypttab_uuid = "UUID=%s" % getoutput('blkid -s UUID -o value ' + device) or device
            if not exists(crypttab_path):
                with open(crypttab_path, "w") as crypttab:
                    crypttab.write('# <target name>\t<source device>\t<key file>\t<options>')
            with open(crypttab_path, "a") as crypttab:
                crypttab.write("{} {} none luks\n".format(mount_name, crypttab_uuid))

    def finish_install(self):
        # write host+hostname infos
        self.log.write(" --> Writing hostname", "InstallerEngine.finish_install", "info")
        self.our_current += 1
        self.update_progress(total=self.our_total, current=self.our_current, message=_("Setting hostname"))
        hostname_path = "%s/etc/hostname" % self.setup.target_dir
        with open(hostname_path, "w") as hostnamefh:
            line = "%s\n" % self.setup.hostname
            self.log.write("Hostname: %s" % line, "InstallerEngine.finish_install", "info")
            hostnamefh.write(line)

        hosts_path = "%s/etc/hosts" % self.setup.target_dir
        with open(hosts_path, "w") as hostsfh:
            hostsfh.write("127.0.0.1\tlocalhost\n")
            hostsfh.write("127.0.1.1\t%s\n" % self.setup.hostname)
            hostsfh.write("# The following lines are desirable for IPv6 capable hosts\n")
            hostsfh.write("::1     localhost ip6-localhost ip6-loopback\n")
            hostsfh.write("fe00::0 ip6-localnet\n")
            hostsfh.write("ff00::0 ip6-mcastprefix\n")
            hostsfh.write("ff02::1 ip6-allnodes\n")
            hostsfh.write("ff02::2 ip6-allrouters\n")
            hostsfh.write("ff02::3 ip6-allhosts\n")

        # set the locale
        self.log.write(" --> Setting the locale", "InstallerEngine.finish_install", "info")
        self.our_current += 1
        self.update_progress(total=self.our_total, current=self.our_current, message=_("Setting locale"))
        if self.setup.language != "en_US":
            self.local_exec("echo \"%s.UTF-8 UTF-8\" >> %s/etc/locale.gen" % (self.setup.language, self.setup.target_dir))
            self.exec_cmd("locale-gen")
        self.local_exec("echo \"\" > %s/etc/default/locale" % self.setup.target_dir)
        self.exec_cmd("update-locale LANG=\"%s.UTF-8\"" % self.setup.language)
        self.exec_cmd("update-locale LANG=%s.UTF-8" % self.setup.language)

        # set the timezone
        self.log.write(" --> Setting the timezone", "InstallerEngine.finish_install", "info")
        self.local_exec("echo \"%s\" > %s/etc/timezone" % (self.setup.timezone, self.setup.target_dir))
        self.local_exec("cp %s/usr/share/zoneinfo/%s %s/etc/localtime" % (self.setup.target_dir, self.setup.timezone, self.setup.target_dir))

        # Upgrade the system if needed
        if has_internet():
            self.log.write(" --> Upgrade the new system when needed", "InstallerEngine.finish_install", "info")
            self.our_total += 1
            self.our_current += 1
            self.update_progress(total=self.our_total, current=self.our_current, message=_("Update apt cache"))
            self.exec_cmd("apt-get update")
            self.our_total += 1
            self.our_current += 1
            self.update_progress(total=self.our_total, current=self.our_current, message=_("Update the new system"))
            self.exec_cmd("apt-get --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes upgrade")

        # localizing
        if self.setup.language != "en_US":
            if exists("/lib/live/mount/medium/pool"):
                self.log.write(" --> Localizing packages", "InstallerEngine.finish_install", "info")
                self.our_total += 1
                self.our_current += 1
                self.update_progress(total=self.our_total, current=self.our_current, message=_("Localizing packages"))
                self.local_exec("mkdir -p %s/debs" % self.setup.target_dir)
                language_code = self.setup.language
                if "_" in self.setup.language:
                    language_code = self.setup.language.split("_")[0]
                l10ns = getoutput("find /lib/live/mount/medium/pool | grep 'l10n-%s\\|hunspell-%s'" % (language_code, language_code))
                for l10n in l10ns.split("\n"):
                    self.local_exec("cp %s %s/debs/" % (l10n, self.setup.target_dir))
                self.exec_cmd("dpkg -i /debs/*")
                self.local_exec("rm -rf %s/debs" % self.setup.target_dir)
            if has_internet():
                # Localize
                loc = Localize(self.setup, self.our_total, self.our_current, self.setup.target_dir)
                loc.set_progress_hook(self.update_progress)
                loc.start()
                self.our_total += loc.our_current
                self.our_current = loc.our_current

        # set the keyboard options..
        self.log.write(" --> Setting the keyboard", "InstallerEngine.finish_install", "info")
        self.our_current += 1
        self.update_progress(total=self.our_total, current=self.our_current, message=_("Setting keyboard options"))
        console_setup = "/etc/default/console-setup"
        if not self.setup.oem_setup:
            console_setup = "%s/etc/default/console-setup" % self.setup.target_dir
        with open(console_setup, "r") as consolefh:
            lines = consolefh.readlines()
        with open("%s.new" % console_setup, "w") as newconsolefh:
            for line in lines:
                line = line.rstrip("\r\n")
                if line.startswith("XKBMODEL="):
                    newconsolefh.write("XKBMODEL=\"%s\"\n" % self.setup.keyboard_model)
                elif line.startswith("XKBLAYOUT="):
                    newconsolefh.write("XKBLAYOUT=\"%s\"\n" % self.setup.keyboard_layout)
                elif line.startswith("XKBVARIANT=") and self.setup.keyboard_variant is not None:
                    newconsolefh.write("XKBVARIANT=\"%s\"\n" % self.setup.keyboard_variant)
                else:
                    newconsolefh.write("%s\n" % line)
        self.local_exec("rm %s" % console_setup)
        self.local_exec("mv %s.new %s" % (console_setup, console_setup))

        keyboard = "/etc/default/keyboard"
        if not self.setup.oem_setup:
            keyboard = "%s/etc/default/keyboard" % self.setup.target_dir
        with open(keyboard, "r") as consolefh:
            lines = consolefh.readlines()
        with open("%s.new" % keyboard, "w") as newconsolefh:
            for line in lines:
                line = line.rstrip("\r\n")
                if line.startswith("XKBMODEL="):
                    newconsolefh.write("XKBMODEL=\"%s\"\n" % self.setup.keyboard_model)
                elif line.startswith("XKBLAYOUT="):
                    newconsolefh.write("XKBLAYOUT=\"%s\"\n" % self.setup.keyboard_layout)
                elif line.startswith("XKBVARIANT=") and self.setup.keyboard_variant is not None:
                    newconsolefh.write("XKBVARIANT=\"%s\"\n" % self.setup.keyboard_variant)
                else:
                    newconsolefh.write("%s\n" % line)
        self.local_exec("rm %s" % keyboard)
        self.local_exec("mv %s.new %s" % (keyboard, keyboard))

        if not self.setup.oem_setup:
            if self.setup.username[-4:] == "-oem":
                # Make sure live-installer starts on next boot full screen
                with open("%s/etc/xdg/autostart/oem-setup.desktop" % self.setup.target_dir, "w") as oemf:
                    cont = "[Desktop Entry]\n" \
                           "Encoding=UTF-8\n" \
                           "Name=OEM Setup\n" \
                           "Comment=Setup user for OEM installation\n" \
                           "Exec=live-installer --oem\n" \
                           "Terminal=false\n" \
                           "Type=Application\n"
                    # Comment the following line when testing OEM setup
                    oemf.write(cont)

                # OEM user does not need to set a root password
                oem_no_pwd = "%s/etc/sudoers.d/oem-no-pwd" % self.setup.target_dir
                with open(oem_no_pwd, "w") as nopwd:
                    nopwd.write("%s ALL=(ALL) NOPASSWD: ALL\n" % self.setup.username)
                self.local_exec("chmod 440 %s" % oem_no_pwd)

            # Configure sensors
            self.our_current += 1
            if exists("%s/usr/sbin/sensors-detect" % self.setup.target_dir):
                self.log.write(" --> Configuring sensors", "InstallerEngine.finish_install", "info")
                self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Configuring sensors"))
                self.exec_cmd('/usr/bin/yes YES | /usr/sbin/sensors-detect')

            # Remove VirtualBox when not installing to VirtualBox or installing to pen drive
            if not in_virtualbox() or self.detachable:
                self.log.write(" --> Remove VirtualBox", "InstallerEngine.finish_install", "info")
                self.our_total += 1
                self.our_current += 1
                self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Removing VirtualBox"))
                self.exec_cmd("apt-get purge --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes virtualbox*")

            # Remove os-prober when installing to pen drive
            if self.detachable:
                self.log.write(" --> Remove os-prober", "InstallerEngine.finish_install", "info")
                self.our_total += 1
                self.our_current += 1
                self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Removing os-prober"))
                self.exec_cmd("apt-get purge --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes os-prober")

            # write MBR (grub)
            self.log.write(" --> Configuring Grub", "InstallerEngine.finish_install", "info")
            self.our_current += 1
            if self.setup.grub_device is not None:
                self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Installing bootloader"))

                if self.detachable:
                    # Install legacy grub on a pen drive
                    self.log.write(" --> Install legacy grub on pen drive", "InstallerEngine.finish_install", "info")
                    self.exec_cmd("grub-install --force --target=i386-pc --recheck --boot-directory=/boot %s" % self.setup.grub_device)
                    if self.setup.gptonefi:
                        # Install both i386 and x86_64 EFI on a pen drive if EFI is installed
                        self.log.write(" --> Installing i386 EFI on pen drive", "InstallerEngine.finish_install", "info")
                        self.exec_cmd("grub-install --target=i386-efi --efi-directory=/boot/efi --bootloader-id=grub --removable --recheck")
                        self.log.write(" --> Installing x86_64 EFI on pen drive", "InstallerEngine.finish_install", "info")
                        self.exec_cmd("grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=grub --removable --recheck")
                else:
                    self.log.write(" --> Running grub-install", "InstallerEngine.finish_install", "info")
                    self.exec_cmd("grub-install --force %s" % self.setup.grub_device)

                self.do_configure_grub()
                grub_retries = 0
                while not self.do_check_grub():
                    self.do_configure_grub()
                    grub_retries = grub_retries + 1
                    if grub_retries >= 5:
                        msg = _("The grub bootloader was not configured properly! You need to configure it manually.")
                        self.log.write(msg, "InstallerEngine.finish_install")
                        self.show_dialog(WARNING,
                                       _("Grub not configured"),
                                       msg)
                        break

                # Save current boot parameters
                if exists("%s/etc/default/grub" % self.setup.target_dir) and len(self.boot_parms) > 0:
                    # When booting in EFI in VirtualBox with an encrypted partition Plymouth will break the system!
                    if 'splash' in self.boot_parms:
                        if in_virtualbox():
                            for partition in self.sorted_partitions:
                                if partition.mount_as:
                                    if partition.encrypt or partition.type == 'luks':
                                        self.log.write("Remove splash from boot parameters", "InstallerEngine.finish_install", "info")
                                        self.boot_parms.remove('splash')
                                        break

                cmd = "sed -i -e 's/GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT=\"%s\"/' %s/etc/default/grub" % (' '.join(self.boot_parms), self.setup.target_dir)
                self.local_exec(cmd)

                # Configure Plymouth
                if exists("%s/bin/plymouth" % self.setup.target_dir) and 'splash' in self.boot_parms:
                    cmd = "sed -i -e \'/GRUB_GFXMODE=/ c GRUB_GFXMODE=1024x768\' %s/etc/default/grub" % self.setup.target_dir
                    self.local_exec(cmd)

                # /etc/default/grub could have been changed: update Grub
                self.exec_cmd('update-grub')

            # recreate initramfs (needed in case of skip_mount also, to include things like mdadm/dm-crypt/etc in case its needed to boot a custom install)
            self.log.write(" --> Configuring Initramfs", "InstallerEngine.finish_install", "info")
            self.our_current += 1
            # Running update-initramfs takes a long time: check if it is necessary
            initrd = "/boot/initrd.img-".format(getoutput("uname -r"))
            update = getmtime(initrd) < time.time() - 86400 if isfile(initrd) else True
            if update:
                self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Configuring initramfs"))
                self.exec_cmd("/usr/sbin/update-initramfs -t -u -k all")
                kernelversion = getoutput("uname -r")
                self.exec_cmd("/usr/bin/sha1sum /boot/initrd.img-%s > /var/lib/initramfs-tools/%s" % (kernelversion, kernelversion))

            # Clean APT
            self.log.write(" --> Cleaning APT", "InstallerEngine.finish_install", "info")
            self.our_current += 1
            self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Cleaning APT"))
            cleanup = "#!/bin/bash\n" \
                      "sed -i 's/^deb cdrom/#deb cdrom/' /etc/apt/sources.list\n" \
                      "dpkg --configure -a\n" \
                      "apt-get -f install\n" \
                      "apt-get -y --force-yes clean\n" \
                      "apt-get -y --force-yes autoremove\n" \
                      "while [ \"$(deborphan)\" ]; do\n" \
                      "  apt-get remove --purge --assume-yes -o " \
                      "Dpkg::Options::=--force-confdef -o " \
                      "Dpkg::Options::=--force-confold --force-yes $(deborphan)\n" \
                      "done"
            with open("%s/cleanup.sh" % self.setup.target_dir, "w") as f:
                f.write(cleanup)
            self.local_exec("chmod +x %s/cleanup.sh" % self.setup.target_dir)
            self.exec_cmd("./cleanup.sh")
            os.remove("%s/cleanup.sh" % self.setup.target_dir)

            # Fix EFI in VirtualBox
            if self.setup.gptonefi and not self.detachable:
                if in_virtualbox():
                    # Create startup.nsh to make boot with EFI possible within VB
                    efi_root = "%s/boot/efi" % self.setup.target_dir
                    efi_files = get_files_from_dir(efi_root, "*.efi")
                    if len(efi_files) > 0:
                        efi_path = efi_files[0].replace(efi_root, '').replace("/", "\\")
                        with open("{}/startup.nsh".format(efi_root), "w") as f:
                            f.write("{}\n".format(efi_path))

        # remove live-packages (or w/e)
        self.our_current += 1
        self.log.write(" --> Removing live packages", "InstallerEngine.finish_install", "info")
        packages_remove = "/lib/live/mount/medium/live/filesystem.packages-remove"
        if self.setup.username[-4:] == "-oem":
            # Save the filesystem.packages-remove file for the OEM setup
            self.local_exec("cp %s %s/root/" % (packages_remove, self.setup.target_dir))
            # But remove the live packages
            packages = "live-boot live-boot-initramfs-tools live-config live-config-sysvinit live-config-systemd live-config-sysvinit live-build live-tools"
            self.exec_cmd("apt-get remove --purge --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes %s" % packages)
        else:
            if self.setup.oem_setup:
                packages_remove = "/root/filesystem.packages-remove"
            self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Removing live configuration (packages)"))
            if exists(packages_remove):
                with open(packages_remove, "r") as fd:
                    line = fd.read().replace('\n', ' ')
                self.exec_cmd("apt-get remove --purge --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes %s" % line)
            else:
                self.exec_cmd("apt-get remove --purge --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes ^live-*")

        if not self.setup.oem_setup:
            # now unmount it
            self.log.write(" --> Unmounting partitions", "InstallerEngine.finish_install", "info")
            self.our_current += 1
            self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Unmounting partitions"))
            self.local_exec("umount --force %s/dev/shm" % self.setup.target_dir)
            self.local_exec("umount --force %s/dev/pts" % self.setup.target_dir)
            #if self.setup.gptonefi:
                #self.local_exec("umount --force %s/media/cdrom")
            self.local_exec("umount --force %s/dev/" % self.setup.target_dir)
            self.local_exec("umount --force %s/sys/fs/fuse/connections/" % self.setup.target_dir)
            self.local_exec("umount --force %s/sys/" % self.setup.target_dir)
            self.local_exec("umount --force %s/proc/" % self.setup.target_dir)
            self.local_exec("rm -f %s/etc/resolv.conf" % self.setup.target_dir)
            self.local_exec("mv %s/etc/resolv.conf.bk %s/etc/resolv.conf" % (self.setup.target_dir, self.setup.target_dir))
            if not self.setup.skip_mount:
                # Unmount partitions
                for partition in reversed(self.sorted_partitions):
                    if "/" in partition.mount_as:
                        target = self.setup.target_dir
                        if partition.mount_as != "/":
                            target += partition.mount_as
                        self.do_unmount(target)
            self.do_unmount("/source")
            self.local_exec("rmdir %s" % self.setup.target_dir)

        self.update_progress(done=True, message=_("Installation finished"))
        self.log.write(" --> All done", "InstallerEngine.finish_install", "info")

    def do_configure_grub(self):
        self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Configuring bootloader"))
        self.log.write(" --> Running grub-mkconfig", "InstallerEngine.do_configure_grub", "info")
        grub_output = getoutput("chroot %s/ /bin/sh -c \"grub-mkconfig -o /boot/grub/grub.cfg\"" % self.setup.target_dir)
        if grub_output:
            self.log.write("\n".join(grub_output), "InstallerEngine.do_configure_grub")

    def do_check_grub(self):
        self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Checking bootloader"))
        self.log.write(" --> Checking Grub configuration", "InstallerEngine.do_check_grub", "info")
        time.sleep(5)
        found_entry = False
        grub_cfg = "%s/boot/grub/grub.cfg" % self.setup.target_dir
        if exists(grub_cfg):
            with open(grub_cfg, "r") as grubfh:
                for line in grubfh:
                    line = line.rstrip("\r\n")
                    if "menuentry " in line:
                        found_entry = True
                        self.log.write("Found Grub entry: %s " % line, "InstallerEngine.do_check_grub")
                        break
            return found_entry
        else:
            self.log.write(_("No %s file found!") % grub_cfg, "InstallerEngine.do_check_grub", "error")
            return False

    def do_mount(self, device, dest, type, options=None):
        ''' Mount a filesystem '''
        options = '-o ' + options if options else ''
        cmd = "mount {options} -t {type} {device} {dest}".format(**locals())
        self.local_exec(cmd)

    def do_unmount(self, mountpoint):
        ''' Unmount a filesystem '''
        cmd = "umount %s" % mountpoint
        self.local_exec(cmd)


# Represents the choices made by the user
class Setup(object):
    config = get_config_dict(CONFIG_FILE)
    logged_user = getoutput("logname")
    oem_setup = False
    if logged_user[-4:] == "-oem":
        oem_setup = True
    target_dir = config.get('target', '/target')
    if oem_setup:
        target_dir = ""
    distribution_name = None
    distribution_id = None
    distribution_version = None
    language = None
    timezone = None
    keyboard_model = None
    keyboard_layout = None
    keyboard_variant = None
    partitions = [] #Array of PartitionSetup objects
    username = None
    hostname = None
    autologin = False
    password1 = None
    password2 = None
    real_name = None
    grub_device = None
    disks = []
    gptonefi = False
    boot_partition = None
    skip_mount = False
    #Descriptions (used by the summary screen)
    keyboard_model_description = None
    keyboard_layout_description = None
    keyboard_variant_description = None

    def print_setup(self):
        if __debug__:
            print(("-------------------------------------------------------------------------"))
            print(("logged user: %s" % self.logged_user))
            if self.oem_setup:
                print(("OEM Setup"))
            else:
                print(("Live Setup"))
            print(("target directory: %s" % self.target_dir))
            print(("language: %s" % self.language))
            print(("timezone: %s" % self.timezone))
            print(("keyboard: %s - %s (%s) - %s - %s (%s)" % (self.keyboard_model, self.keyboard_layout, self.keyboard_variant, self.keyboard_model_description, self.keyboard_layout_description, self.keyboard_variant_description)))
            print(("user: %s (%s)" % (self.username, self.real_name)))
            print(("autologin: ", self.autologin))
            print(("hostname: %s " % self.hostname))
            print(("passwords: %s - %s" % (self.password1, self.password2)))
            print(("grub_device: %s " % self.grub_device))
            print(("boot_partition: %s" % self.boot_partition))
            print(("skip_mount: %s" % self.skip_mount))
            if not self.skip_mount:
                if self.gptonefi:
                    print(("GPT partition table: True"))
                else:
                    print(("GPT partition table: False"))
                print(("disks:"))
                for disk in self.disks:
                    print(("{}\t{}".format(disk[0], disk[1], disk[2], disk[3])))
                print(("partitions:"))
                for partition in self.partitions:
                    partition.print_partition()
            print(("-------------------------------------------------------------------------"))
