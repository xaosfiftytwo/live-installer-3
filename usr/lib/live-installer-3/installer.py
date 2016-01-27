#! /usr/bin/env python3

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
import time
import sys
import threading

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
        self.config = get_config_dict(CONFIG_FILE)
        self.boot_parms = get_boot_parameters()
        self.live_user = self.config.get('live_user', 'user')
        self.media = self.config.get('live_media_source',
                                     '/lib/live/mount/medium/live/filesystem.squashfs')
        self.media_type = self.config.get('live_media_type', 'squashfs')
        self.critical_error_happened = False
        self.our_total = 0
        self.our_current = 0
        self.ssd = False
        self.detachable = False
        self.ssd_partition = ""
        self.sorted_partitions = []

        manual_partitions = []
        if self.setup.skip_mount:
            # Create partition objects with the information of the manually mounted partitions
            manual_mounts = getoutput("cat /proc/mounts | grep -Ev 'target/dev|/target/sys|/target/proc' | grep target", always_as_list=True)
            if manual_mounts:
                for manual_mount in manual_mounts:
                    device_info = manual_mount.split(" ")
                    if device_info:
                        # 0 = partition path, 1 = mount_as, 2 = fs type
                        path = device_info[0]
                        #print((">> Find manual mount {} in known partitions".format(path)))
                        mount_as = device_info[1].replace("target", "").replace("//", "/")
                        for partition in self.setup.partitions:
                            if partition.path == path:
                                print((">> Manual mount {} found will be mounted as {} with type {}".format(path, mount_as, partition.type)))
                                partition.mount_as = mount_as
                                if "/boot" in partition.mount_as:
                                   self.setup.boot_partition = partition.path
                                manual_partitions.append(partition)
            else:
                print((">> Nothing mounted on /target - exiting"))
                return

        # Sort the partitions (needed for right order of mounting/unmounting
        mounts = []
        partitions = self.setup.partitions
        if manual_partitions:
            print((">> Use manually mounted partitions"))
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
                    #print((">> Add mount {} to sorted partitions".format(mount)))
                    self.sorted_partitions.append(partition)

        # Check if mounted root is ssd of detachable
        for partition in self.sorted_partitions:
            if partition.mount_as == '/':
                path = partition.path
                if "/dev/mapper" in path:
                    path = partition.enc_status['device']
                # Check if we need to treat this disk as an SSD
                for disk in self.setup.disks:
                    #print((">> Check disk {} for ssd".format(disk)))
                    if disk[0] in path:
                        self.ssd = disk[2]
                        self.detachable = disk[3]
                        self.ssd_partition = partition.path
                        #print((">> disk={}, ssd={}, detachable={}".format(disk[0], self.ssd, self.detachable)))
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
            print(detail1)
            do_try_finish_install = False
            self.show_dialog(ERROR,
                           _("Installation error"),
                           str(detail1))

        if self.critical_error_happened:
            do_try_finish_install = False

        if do_try_finish_install:
            if self.setup.skip_mount:
                self.pause()
                print((">> Thread has been paused"))
                msg = "%s\n\n%s\n%s" % (_("Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation."),
                                        _("Verify that fstab is correct (use blkid to check the UUIDs)."),
                                        _("A chrooted terminal and fstab will be opened after you close this message."))
                self.show_dialog(PAUSE,
                               _("Installation paused"),
                               msg)
                while self.pause_event.is_set():
                    time.sleep(1)
                print((">> Thread has been unpaused from main thread"))

            try:
                self.finish_install()
            except Exception as detail1:
                print(detail1)
                self.show_dialog(ERROR,
                               _("Installation error"),
                               str(detail1))

    def update_progress(self, fail=False, done=False, pulse=False, total=0, current=0, message=""):
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
                    print(("Set boot flag on disk {}, partition {}".format(bootDisk, partNr)))
                    cmd = "parted --script --align optimal {} set {} boot on; sync".format(bootDisk, partNr)
                    shell_exec(cmd)
                elif bootDisk != partDisk:
                    if 'boot' in partition.flags:
                        partNr = partition.path[-1]
                        print(("Remove boot flag from disk {}, partition {}".format(partDisk, partNr)))
                        cmd = "parted --script --align optimal {} set {} boot off; sync".format(partDisk, partNr)
                        shell_exec(cmd)

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
                   os.path.exists(partition.enc_status['active']):
                       mapped_name = os.path.basename(partition.enc_status['active'])
                       shell_exec("cryptsetup close {}".format(mapped_name))

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

                shell_exec(cmd)

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
                    shell_exec(cmd)
                except:
                    print(("Could not write label \"{}\" to partition {}".format(partition.label, partition.path)))

    def step_mount_source(self):
        # Mount the installation media
        print(" --> Mounting partitions")
        msg = _("Mounting %(partition)s on %(mountpoint)s") % {'partition':self.media, 'mountpoint':"/source/"}
        print(msg)
        self.update_progress(total=4, current=3, message=msg)
        self.do_mount(self.media, "/source/", self.media_type, options="loop")

    def step_mount_partitions(self):
        # Mount source
        self.step_mount_source()

        # Mount the sorted partitions
        for partition in self.sorted_partitions:
            if "/" in partition.mount_as:
                target = "/target"
                if partition.mount_as != "/":
                    target += partition.mount_as
                msg = _("Mounting %(partition)s on %(mountpoint)s") % {'partition':partition.path, 'mountpoint':target}
                print(msg)
                self.update_progress(total=4, current=4, message=msg)
                shell_exec("mkdir -p %s 2>/dev/null" % target)
                partition_type = partition.type
                if partition_type.startswith('fat'):
                    partition_type = 'vfat'
                elif partition_type == 'luks':
                    partition_type = partition.enc_status['filesystem']
                self.do_mount(partition.path, target, partition_type, None)

    def init_install(self):
        # mount the media location.
        print(" --> Installation started")
        if not os.path.exists("/target"):
            if self.setup.skip_mount:
                self.show_dialog(ERROR,
                               _("Not mounted"),
                               _("You must first manually mount your target filesystem(s) at /target to do a custom install!"))
                return
            os.mkdir("/target")
        if not os.path.exists("/source"):
            os.mkdir("/source")
        # find the squashfs..
        if not os.path.exists(self.media):
            print("Base filesystem does not exist! Critical error (exiting).")
            self.show_dialog(ERROR,
                           _("Base filesystem does not exist"),
                           _("Something is wrong with the installation medium! This is usually caused by burning tools which are not compatible with {}. Please burn the ISO image to DVD/USB using a different tool.".format(self.setup.distribution_name)))
            return

        shell_exec("umount --force /target/dev/shm")
        shell_exec("umount --force /target/dev/pts")
        shell_exec("umount --force /target/dev/")
        shell_exec("umount --force /target/sys/fs/fuse/connections")
        shell_exec("umount --force /target/sys/")
        shell_exec("umount --force /target/proc/")

        if not self.setup.skip_mount:
            self.step_boot_prepare()
            self.step_format_partitions()
            self.step_mount_partitions()
        else:
            self.step_mount_source()

        # # Preserve /root if it exists
        if os.path.isdir("/target/root"):
            # shutil.copytree gave errors on kde cache files
            shell_exec("cp -r /target/root /tmp/")

        # Transfer the files
        self.our_current = 0
        prev_sec = -1
        SOURCE = "/source/"
        DEST = "/target/"
        EXCLUDE_DIRS = "home/* dev/* proc/* sys/* tmp/* run/* mnt/* media/* lost+found source".split()

        # assume: #(files to copy) ~= #(used inodes on /)
        self.our_total = int(getoutput("df --inodes /{src} | awk '/^.+?\/{src}$/{{ print $3 }}'".format(src=SOURCE.strip('/'))))
        print((" --> Copying {} files".format(self.our_total)))
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
            print(("ERROR: rsync exited with returncode: %s" % str(rsync_return_code)))
            sys.exit()

        # Restore /root if it was preserved
        if os.path.isdir("/tmp/root"):
            if os.path.isdir("/target/root"):
                shell_exec("mv /target/root /tmp/root.install")
            shell_exec("mv /tmp/root /target/")

        # Steps:
        self.our_total = 4 + 9
        self.our_current = 0
        # chroot
        print(" --> Chrooting")
        self.update_progress(total=self.our_total, current=self.our_current, message=_("Entering the system ..."))
        shell_exec("mount --bind /dev/ /target/dev/")
        shell_exec("mount --bind /dev/shm /target/dev/shm")
        shell_exec("mount --bind /dev/pts /target/dev/pts")
        shell_exec("mount --bind /sys/ /target/sys/")
        shell_exec("mount --bind /proc/ /target/proc/")
        shell_exec("mv /target/etc/resolv.conf /target/etc/resolv.conf.bk")
        shell_exec("cp -f /etc/resolv.conf /target/etc/resolv.conf")

        kernelversion= getoutput("uname -r")
        shell_exec("cp /lib/live/mount/medium/live/vmlinuz /target/boot/vmlinuz-%s" % kernelversion)
        found_initrd = False
        for initrd in ["/lib/live/mount/medium/live/initrd.img", "/lib/live/mount/medium/live/initrd.lz"]:
            if os.path.exists(initrd):
                shell_exec("cp %s /target/boot/initrd.img-%s" % (initrd, kernelversion))
                found_initrd = True
                break

        if not found_initrd:
            print("WARNING: No initrd found!!")

        if self.setup.gptonefi:
            self.our_total += 1
            self.our_current += 1
            print(" --> Installing EFI packages")
            self.update_progress(total=self.our_total, current=self.our_current, message=_("Installing EFI packages..."))

            shell_exec("mkdir -p /target/debs")
            shell_exec("cp /lib/live/mount/medium/offline/*efi*.deb /target/debs/")
            ret = chroot_exec("dpkg --force-confdef --force-confnew --force-depends --force-overwrite -i /debs/*.deb")
            shell_exec("rm -rf /target/debs")
            if int(ret) != 0:
                if has_internet():
                    chroot_exec("apt-get remove --purge --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes grub-efi")
                # TODO: Errors were reported after installing grub-efi and leaving grub-pc
                # (although it should have been removed in the previous process)
                chroot_exec("apt-get remove --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes grub-pc")
                chroot_exec("apt-get -f install --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes")

        # Detect cdrom device
        # TODO : properly detect cdrom device
        # Mount it
        # os.system("mkdir -p /target/media/cdrom")
        # if int(os.system("mount /dev/sr0 /target/media/cdrom")):
        #     print " --> Failed to mount CDROM. Install will fail"
        # chroot_exec("apt-cdrom -o Acquire::cdrom::AutoDetect=false -m add")

        # Install offline Broadcom drivers
        installBroadcom = False
        ddm_path = '/usr/bin/ddm'
        if os.path.exists(ddm_path):
            device_ids = getoutput("lspci -n -d 14e4: | awk '{print $3}' | cut -d':' -f 2", True)
            if device_ids:
                #print "Broadcom deviceids: {}".format(' '.join(device_ids))
                wl_ids = getoutput("cat {} | grep 'WLDEBIAN=' | cut -d'=' -f 2".format(ddm_path)).split('|')
                for did in device_ids:
                    did = did.strip()
                    for wl_id in wl_ids:
                        if did == wl_id:
                            print(("Supported Broadcom deviceid found: {}".format(did)))
                            installBroadcom = True
                            break
                    if installBroadcom:
                        break

        if installBroadcom:
            self.our_total += 1
            self.our_current += 1
            print(" --> Installing drivers")
            self.update_progress(total=self.our_total, current=self.our_current, message=_("Installing drivers"))
            shell_exec("mkdir -p /target/debs")
            shell_exec("cp /lib/live/mount/medium/offline/broadcom*.deb /target/debs/")
            chroot_exec("dpkg --force-confdef --force-confnew --force-depends --force-overwrite -i /debs/*.deb")
            chroot_exec("modprobe wl")
            shell_exec("rm -rf /target/debs")
            with open("/target/etc/modprobe.d/blacklist-broadcom.conf", "w") as conf:
                conf.write('blacklist b43 brcmsmac bcma ssb')

        # remove live-packages (or w/e)
        print(" --> Removing live packages")
        self.our_current += 1
        self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Removing live configuration (packages)"))
        with open("/lib/live/mount/medium/live/filesystem.packages-remove", "r") as fd:
            line = fd.read().replace('\n', ' ')
        chroot_exec("apt-get remove --purge --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes %s" % line)

        # add new user
        print(" --> Adding new user")
        self.our_current += 1
        self.update_progress(total=self.our_total, current=self.our_current, message=_("Adding new user to the system"))
        chroot_exec('adduser --disabled-login --gecos "{real_name}" {username}'.format(real_name=self.setup.real_name.replace('"', r'\"'), username=self.setup.username))
        for group in 'adm audio bluetooth cdrom dialout dip fax floppy fuse lpadmin netdev plugdev powerdev sambashare scanner sudo tape users vboxsf video'.split():
            chroot_exec("adduser {user} {group}".format(user=self.setup.username, group=group))

        # Double check if the user directory exists
        # Had this when setting a previously encrypted partition to /home
        user_dir = "/target/home/{}".format(self.setup.username)
        if not os.path.exists(user_dir):
            print((">> Create user dir: {}".format(user_dir)))
            shell_exec("mkdir {}".format(user_dir))
            shell_exec("cp -R /etc/skel/.* {}/".format(user_dir))
            shell_exec("chown -R {}:{} {}".format(self.setup.username, self.setup.username, user_dir))

        # Save passwords
        # Using a temporary file fails for the new user (but correctly sets the root's password)
        # Using mkpasswd prevents not setting a password when special characters like $ or " are used
        pwd = getoutput("mkpasswd '{}'".format(self.setup.password1))
        #print((">> Encrypt password {} for user {} to {}".format(self.setup.password1, self.setup.username, pwd)))
        chroot_exec("echo '{}:{}' | chpasswd -e".format(self.setup.username, pwd))
        chroot_exec("echo 'root:{}' | chpasswd -e".format(pwd))

        # Set autologin for user if they so elected
        if self.setup.autologin:
            # LightDM
            chroot_exec(r"sed -i -r 's/^#?(autologin-user)\s*=.*/\1={user}/' /etc/lightdm/lightdm.conf".format(user=self.setup.username))
            # MDM
            chroot_exec(r"sed -i -r -e '/^AutomaticLogin(Enable)?\s*=/d' -e 's/^(\[daemon\])/\1\nAutomaticLoginEnable=true\nAutomaticLogin={user}/' /etc/mdm/mdm.conf".format(user=self.setup.username))
            # GDM3
            chroot_exec(r"sed -i -r -e '/^(#\s*)?AutomaticLogin(Enable)?\s*=/d' -e 's/^(\[daemon\])/\1\nAutomaticLoginEnable=true\nAutomaticLogin={user}/' /etc/gdm3/daemon.conf".format(user=self.setup.username))
            # KDE4
            chroot_exec(r"sed -i -r -e 's/^#?(AutomaticLoginEnable)\s*=.*/\1=true/' -e 's/^#?(AutomaticLoginUser)\s*.*/\1={user}/' /etc/kde4/kdm/kdmrc".format(user=self.setup.username))
            # LXDM
            chroot_exec(r"sed -i -r -e 's/^#?(autologin)\s*=.*/\1={user}/' /etc/lxdm/lxdm.conf".format(user=self.setup.username))
            # SLiM
            chroot_exec(r"sed -i -r -e 's/^#?(default_user)\s.*/\1  {user}/' -e 's/^#?(auto_login)\s.*/\1  yes/' /etc/slim.conf".format(user=self.setup.username))
        else:
            # LightDM uses autologin in live session
            chroot_exec(r"sed -i -r 's/^#?(autologin-user)\s*=.*/\1=/' /etc/lightdm/lightdm.conf")

        # Add user's face
        shell_exec("cp /tmp/live-installer-3-face.png /target/home/%s/.face" % self.setup.username)
        chroot_exec("chown %s:%s /home/%s/.face" % (self.setup.username, self.setup.username, self.setup.username))

        # write the /etc/fstab and /etc/crypttab
        self.our_current += 1
        self.update_progress(total=self.our_total, current=self.our_current, message=_("Writing filesystem mount information to /etc/fstab"))
        if not os.path.exists("/target/etc/fstab"):
            shell_exec("echo -e '# <file system>\t<mount point>\t<type>\t<options>\t<dump>\t<pass>' > /target/etc/fstab")

        # Configure the system
        # Check UUIDs
        border = '=' * 25
        print(("{}\n>> Compare fstab/crypttab UUIDS with blkid output <<\n"
              "fstab: /dev/mapper/sdXY UUIDs, crypttab: /dev/sdXY UUIDS\n"
              "{} blkid {}\n{}\n{}\n".format(border * 2, border, border,
              "\n".join(getoutput("blkid")), border * 2)))

        fstab_path = "/target/etc/fstab"
        crypttab_path = "/target/etc/crypttab"
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
                    mount_name = os.path.basename(partition.path)
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
            fstrim_path = "/target/etc/cron.weekly/fstrim_job"
            fstrim_cont = "#!/bin/sh\n" \
                          "for fs in $(lsblk -o MOUNTPOINT,DISC-MAX,FSTYPE | grep -E '^/.* [1-9]+.* ' | awk '{print $1}'); do\n" \
                          "  fstrim \"$fs\"\n" \
                          "done\n"
            with open(fstrim_path, "w") as fstrim:
                fstrim.write(fstrim_cont)
            shell_exec("chmod +x {}".format(fstrim_path))

            # Swappiness
            swappiness_path = "/target/etc/sysctl.d/sysctl.conf"
            swappiness_cont = "vm.swappiness=1\n" \
                              "vm.vfs_cache_pressure=25\n" \
                              "vm.dirty_ratio=50\n" \
                              "vm.dirty_background_ratio=3\n"
            with open(swappiness_path, "w") as swappiness:
                swappiness.write(swappiness_cont)

            # Sysfs
            sysfs_path = "/target/etc/sysfs.conf"
            sysfs_cont = "block/{}/queue/scheduler=deadline\n".format(os.path.basename(self.ssd_partition))
            with open(sysfs_path, "w") as sysfs:
                sysfs.write(sysfs_cont)

            # Browser RAM cache
            cache_path = "/target/etc/profile.d/browser-cache.sh"
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
                prefs_path = "/target/home/%s/.mozilla/firefox/mwad0hks.default/prefs.js" % self.setup.username
                if os.path.exists(prefs_path):
                    # Save to prefs file
                    prefs_cont = "user_pref(\"browser.cache.disk.parent_directory\", \"/run/user/1000/firefox-cache\");"
                    with open(prefs_path, "a") as prefs:
                        prefs.write(prefs_cont)

        # Show the fstab contents
        with open(fstab_path, "r") as fstab:
            print(("{} fstab {}\n{}\n{}\n".format(border, border, fstab.read(), border *2)))

        # Show the crypttab contents
        if mount_name != '':
            with open(crypttab_path, "r") as crypttab:
                print(("{} crypttab {}\n{}\n{}\n".format(border, border, crypttab.read(), border * 2)))

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
            if not os.path.exists(crypttab_path):
                with open(crypttab_path, "w") as crypttab:
                    crypttab.write('# <target name>\t<source device>\t<key file>\t<options>')
            with open(crypttab_path, "a") as crypttab:
                crypttab.write("{} {} none luks\n".format(mount_name, crypttab_uuid))

    def finish_install(self):
        # write host+hostname infos
        print(" --> Writing hostname")
        self.our_current += 1
        self.update_progress(total=self.our_total, current=self.our_current, message=_("Setting hostname"))
        with open("/target/etc/hostname", "w") as hostnamefh:
            line = "%s\n" % self.setup.hostname
            print(("Hostname: %s" % line))
            hostnamefh.write(line)
        with open("/target/etc/hosts", "w") as hostsfh:
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
        print(" --> Setting the locale")
        self.our_current += 1
        self.update_progress(total=self.our_total, current=self.our_current, message=_("Setting locale"))
        if self.setup.language != "en_US":
            shell_exec("echo \"%s.UTF-8 UTF-8\" >> /target/etc/locale.gen" % self.setup.language)
            chroot_exec("locale-gen")
        shell_exec("echo \"\" > /target/etc/default/locale")
        chroot_exec("update-locale LANG=\"%s.UTF-8\"" % self.setup.language)
        chroot_exec("update-locale LANG=%s.UTF-8" % self.setup.language)

        # set the timezone
        print(" --> Setting the timezone")
        shell_exec("echo \"%s\" > /target/etc/timezone" % self.setup.timezone)
        shell_exec("cp /target/usr/share/zoneinfo/%s /target/etc/localtime" % self.setup.timezone)

        # Upgrade the system if needed
        if has_internet():
            print(" --> Upgrade the new system when needed")
            self.our_total += 1
            self.our_current += 1
            self.update_progress(total=self.our_total, current=self.our_current, message=_("Update apt cache"))
            chroot_exec("apt-get update")
            self.our_total += 1
            self.our_current += 1
            self.update_progress(total=self.our_total, current=self.our_current, message=_("Update the new system"))
            chroot_exec("apt-get --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes upgrade")

        # localizing
        if self.setup.language != "en_US":
            if os.path.exists("/lib/live/mount/medium/pool"):
                print(" --> Localizing packages")
                self.our_total += 1
                self.our_current += 1
                self.update_progress(total=self.our_total, current=self.our_current, message=_("Localizing packages"))
                shell_exec("mkdir -p /target/debs")
                language_code = self.setup.language
                if "_" in self.setup.language:
                    language_code = self.setup.language.split("_")[0]
                l10ns = getoutput("find /lib/live/mount/medium/pool | grep 'l10n-%s\\|hunspell-%s'" % (language_code, language_code))
                for l10n in l10ns.split("\n"):
                    shell_exec("cp %s /target/debs/" % l10n)
                chroot_exec("dpkg -i /debs/*")
                shell_exec("rm -rf /target/debs")
            if has_internet():
                # Localize
                loc = Localize(self.setup, self.our_total, self.our_current)
                loc.set_progress_hook(self.update_progress)
                loc.start()
                self.our_total += loc.our_current
                self.our_current = loc.our_current

        # Configure sensors
        self.our_current += 1
        if os.path.exists('/target/usr/sbin/sensors-detect'):
            print(" --> Configuring sensors")
            self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Configuring sensors"))
            chroot_exec('/usr/bin/yes YES | /usr/sbin/sensors-detect')

        # Remove VirtualBox when not installing to VirtualBox or installing to pen drive
        if not in_virtualbox() or self.detachable:
            print(" --> Remove VirtualBox")
            self.our_total += 1
            self.our_current += 1
            self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Removing VirtualBox"))
            chroot_exec("apt-get purge --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes virtualbox*")

        # Remove os-prober when installing to pen drive
        if self.detachable:
            print(" --> Remove os-prober")
            self.our_total += 1
            self.our_current += 1
            self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Removing os-prober"))
            chroot_exec("apt-get purge --assume-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold --force-yes os-prober")

        # set the keyboard options..
        print(" --> Setting the keyboard")
        self.our_current += 1
        self.update_progress(total=self.our_total, current=self.our_current, message=_("Setting keyboard options"))
        with open("/target/etc/default/console-setup", "r") as consolefh:
            lines = consolefh.readlines()
        with open("/target/etc/default/console-setup.new", "w") as newconsolefh:
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
        chroot_exec("rm /etc/default/console-setup")
        chroot_exec("mv /etc/default/console-setup.new /etc/default/console-setup")

        with open("/target/etc/default/keyboard", "r") as consolefh:
            lines = consolefh.readlines()
        with open("/target/etc/default/keyboard.new", "w") as newconsolefh:
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
        chroot_exec("rm /etc/default/keyboard")
        chroot_exec("mv /etc/default/keyboard.new /etc/default/keyboard")

        # write MBR (grub)
        print(" --> Configuring Grub")
        self.our_current += 1
        if self.setup.grub_device is not None:
            self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Installing bootloader"))

            # Also install legacy grub on a pen drive if EFI is installed
            if self.setup.gptonefi and self.detachable:
                print(" --> Install legacy grub on pen drive")
                chroot_exec("grub-install --force --target=i386-pc --recheck --boot-directory=/boot %s" % self.setup.grub_device)

            print(" --> Running grub-install")
            chroot_exec("grub-install --force %s" % self.setup.grub_device)
            self.do_configure_grub()
            grub_retries = 0
            while not self.do_check_grub():
                self.do_configure_grub()
                grub_retries = grub_retries + 1
                if grub_retries >= 5:
                    self.show_dialog(WARNING,
                                   _("Grub not configured"),
                                   _("The grub bootloader was not configured properly! You need to configure it manually."))
                    break

            # Save current boot parameters
            if os.path.exists("/target/etc/default/grub") and len(self.boot_parms) > 0:
                # When booting in EFI in VirtualBox with an encrypted partition Plymouth will break the system!
                if 'splash' in self.boot_parms:
                    if in_virtualbox():
                        for partition in self.sorted_partitions:
                            if partition.mount_as:
                                if partition.encrypt or partition.type == 'luks':
                                    print((">> Remove splash from boot parameters"))
                                    self.boot_parms.remove('splash')
                                    break

            cmd = "sed -i -e 's/GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT=\"{}\"/' /target/etc/default/grub".format(' '.join(self.boot_parms))
            shell_exec(cmd)

            # Configure Plymouth
            if os.path.exists('/target/bin/plymouth') and 'splash' in self.boot_parms:
                cmd = 'sed -i -e \'/GRUB_GFXMODE=/ c GRUB_GFXMODE=1024x768\' /target/etc/default/grub'
                shell_exec(cmd)

            # /etc/default/grub could have been changed: update Grub
            chroot_exec('update-grub')

        # recreate initramfs (needed in case of skip_mount also, to include things like mdadm/dm-crypt/etc in case its needed to boot a custom install)
        print(" --> Configuring Initramfs")
        self.our_current += 1
        # Running update-initramfs takes a long time: check if it is necessary
        initrd = "/boot/initrd.img-".format(getoutput("uname -r"))
        update = os.path.getmtime(initrd) < time.time() - 86400 if os.path.isfile(initrd) else True
        if update:
            self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Configuring initramfs"))
            chroot_exec("/usr/sbin/update-initramfs -t -u -k all")
            kernelversion = getoutput("uname -r")
            chroot_exec("/usr/bin/sha1sum /boot/initrd.img-%s > /var/lib/initramfs-tools/%s" % (kernelversion,kernelversion))

        # Clean APT
        print(" --> Cleaning APT")
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
        with open("/target/cleanup.sh", "w") as f:
            f.write(cleanup)
        shell_exec("chmod +x /target/cleanup.sh")
        chroot_exec("./cleanup.sh")
        os.remove("/target/cleanup.sh")

        # Fix EFI in VirtualBox
        if self.setup.gptonefi:
            if in_virtualbox():
                # Create startup.nsh to make boot with EFI possible within VB
                efi_root = "/target/boot/efi"
                efi_files = get_files_from_dir(efi_root, "*.efi")
                if len(efi_files) > 0:
                    efi_path = efi_files[0].replace(efi_root, '').replace("/", "\\")
                    with open("{}/startup.nsh".format(efi_root), "w") as f:
                        f.write("{}\n".format(efi_path))

        # now unmount it
        print(" --> Unmounting partitions")
        self.our_current += 1
        self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Unmounting partitions"))
        shell_exec("umount --force /target/dev/shm")
        shell_exec("umount --force /target/dev/pts")
        #if self.setup.gptonefi:
            #shell_exec("umount --force /target/media/cdrom")
        shell_exec("umount --force /target/dev/")
        shell_exec("umount --force /target/sys/fs/fuse/connections/")
        shell_exec("umount --force /target/sys/")
        shell_exec("umount --force /target/proc/")
        shell_exec("rm -f /target/etc/resolv.conf")
        shell_exec("mv /target/etc/resolv.conf.bk /target/etc/resolv.conf")
        if not self.setup.skip_mount:
            # Unmount partitions
            for partition in reversed(self.sorted_partitions):
                if "/" in partition.mount_as:
                    target = "/target"
                    if partition.mount_as != "/":
                        target += partition.mount_as
                    self.do_unmount(target)
        self.do_unmount("/source")
        shell_exec("rmdir /target")

        self.update_progress(done=True, message=_("Installation finished"))
        print(" --> All done")

    def do_configure_grub(self):
        self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Configuring bootloader"))
        print(" --> Running grub-mkconfig")
        grub_output = getoutput("chroot /target/ /bin/sh -c \"grub-mkconfig -o /boot/grub/grub.cfg\"")
        with open("/var/log/live-installer-3-grub-output.log", "w") as grubfh:
            grubfh.writelines(grub_output)

    def do_check_grub(self):
        self.update_progress(pulse=True, total=self.our_total, current=self.our_current, message=_("Checking bootloader"))
        print(" --> Checking Grub configuration")
        time.sleep(5)
        found_entry = False
        if os.path.exists("/target/boot/grub/grub.cfg"):
            with open("/target/boot/grub/grub.cfg", "r") as grubfh:
                for line in grubfh:
                    line = line.rstrip("\r\n")
                    if "menuentry " in line:
                        found_entry = True
                        print((" --> Found Grub entry: %s " % line))
                        break
            return found_entry
        else:
            print("!No /target/boot/grub/grub.cfg file found!")
            return False

    def do_mount(self, device, dest, type, options=None):
        ''' Mount a filesystem '''
        options = '-o ' + options if options else ''
        cmd = "mount {options} -t {type} {device} {dest}".format(**locals())
        shell_exec(cmd)

    def do_unmount(self, mountpoint):
        ''' Unmount a filesystem '''
        cmd = "umount %s" % mountpoint
        shell_exec(cmd)


# Represents the choices made by the user
class Setup(object):
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
