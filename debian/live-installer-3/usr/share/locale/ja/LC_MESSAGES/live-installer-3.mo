Þ    ¥      D  ß   l
      è  *   é  &        ;     Â     à  (  ì       ,        H     T     h     x            E        å               ¨     ¼     É     æ     û          (     <     D  Æ   L       H        c     w       F        ã     ò     ú       
   3     >  J   R          ±     É     Ï     â  	   ø       *        =  
   E     P     U     b  
   k  {   v  c   ò     V     ^  %   q  ±        I     f     x       Y   ¡     û  =   ~     ¼     Ð     æ     ù     
          ,     2     C  
   L     W     ^     m     z                ¯     Æ     Ý  #   ñ          '     -     9  (   J     s  ¹     Î   D            %   )  F   O  9     U   Ð  7   &     ^  0   y     ª     Å  -   ä                    )  
   1     <  &   P     w               ­     ¾     ×     æ  ·   ë     £      «      »   :   Ë   ,   !  S   3!  n   !  9   ö!  9   0"  a   j"  /   Ì"     ü"  
   #     #     #     #     .#  *   K#  	   v#     #  
   #     #  2   ¡#     Ô#  
  a$  ç   l%  ^   T&  N   ³&  /   '     2'     A'     O'     l'     y'  (   '     °'     Á'     Î'     ×'     ß'     í'  ¨  ú'  =   £)  8   á)  Ð   *  *   ë*  	   +  Ý    +     þ+  9   ,     ?,     Q,     k,     ,     ,     ¨,  ]   ¯,     -  9   &-  ½   `-  -   .     L.  !   i.     .  -   ¡.     Ï.     æ.     û.     /  ÷   /     0  d   0  #   v0  «   0     F1  B   Ê1     2  	   ,2  +   62     b2  	   2     2  h   £2     3  '   &3  	   N3     X3  -   t3     ¢3     µ3  8   Ñ3     
4     4     4     #4     ;4     H4  {   W4  o   Ó4     C5  !   V5  <   x5  ´   µ5  9   j6     ¤6     À6     Ü6  {   õ6  «   q7  b   8  !   8  9   ¢8  '   Ü8     9  !    9      B9  	   c9     m9     9     9     9     ©9     Å9      Ø9      ù9     :  $   7:  $   \:  9   :  0   »:     ì:  	   ;     ;     +;  ?   C;  -   ;  ä   ±;  ì   <     =     =  1   ¦=  g   Ø=  K   @>     >  ?   ?  '   M?  H   u?  *   ¾?  *   é?  I   @     ^@  	   e@     o@  	   x@     @     @  :   ¬@     ç@     þ@     A  $   6A  6   [A  $   A  	   ·A  
  ÁA     ÌB     ÓB     æB  I   øB  F   BC  p   C     úC  Q   D  N   ÒD  {   !E  @   E     ÞE     ñE     F  	   F     F  6   4F  W   kF     ÃF     ÖF     éF     ûF  F   G  Ò   IG    H  X  ¨I  x   K  g   zK  I   âK     ,L     3L  $   CL     hL     {L  B   L  "   ÎL     ñL     M     M     M     7M     ;              I      ,      L       ^                 .                    R   Z      %   T   \   H           X       Y   n                   C      ¡   #              ¢   2   -                 s       _   F   6   >   K   j       /          (   G             g      *          ~               J   [      v   M   O                m      k   u   <      +         w                     
   d          @   a   {       0   ¥   l             `   U   S      9   h   N       1       3       |          i               ¤       W   ]   "                8         r                         y       f   o           B          P   A                               £   q       4   5   E               :   c   p   Q   x      }            =          '   	   z   ?   b   D   $   7   e                   )      !      t   &                  V    <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> A root partition is needed to install the system.

 - Mount point: /
 - Recommended size: 30GB
 - Recommended filesystem format: ext4
 Adding new user to the system Advanced... An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Apply Are you sure you want to quit the installer? Assign to / Assign to /boot/efi Assign to /home Automatic login Automatic login:  Back Before continuing, please mount your target filesystem(s) at /target. Browse for more pictures... Calculating file indexes ... Cannot download and install additional locale packages: no internet connection
Configuration will still be set to your selected language. Checking bootloader Cleaning APT Click to change your picture Configuring Plymouth Configuring bootloader Configuring initramfs Configuring sensors Copying Country Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Do not install Grub Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be given time to chroot into /target and install any packages that will be needed to boot your new system. During the install, you will be required to write your own /etc/fstab. Edit partition Encrypt Encrypt {} and format as {} Encrypting %(partition)s ... Encryption Encryption password Encryption will erase all data from {}

Are you sure you want to continue? Encryption/password Entering the system ... Error Extended partition Filesystem operations Format as Format {} as {} Formatting %(partition)s as %(format)s ... Forward Free space Grub Grub install Hostname Hostname:  If enabled, the login screen is skipped when the system starts, and you are signed into your desktop session automatically. If you aren't sure what any of this means, please go back and deselect manual partition management. Install Install Grub on {} Install additional localized packages Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Install the operating system Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation. Installation is paused: please finish the custom installation Installation paused Installing bootloader Installing drivers Installing {}... Keyboard layout Keyboard layout:  Label Label (optional) Language Language:  Layout Live Installer Localization Localizing AbiWord Localizing Firefox Localizing KDE Localizing LibreOffice Localizing Thunderbird Localizing packages Log in automatically on system boot Logical partition Model Mount point Mount {}{} as {} Mounting %(partition)s on %(mountpoint)s No internet connection No partition table was found on the hard drive: {disk_description}. Do you want the installer to create a set of partitions for you? Note: This will ERASE ALL DATA present on this disk. Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Password for the encrypted partition: Please do the following and then click Forward to finish installation: Please enter your password twice to ensure it is correct. Please indicate a filesystem to format the root (/) partition with before proceeding. Please make sure you wish to manage partitions manually Please provide a hostname. Please provide a password for your user account. Please provide a username. Please provide your full name. Provide an encryption password for partition: Quit Quit? Real name:  Refresh Removable: Removing VirtualBox Removing live configuration (packages) Removing os-prober Select timezone Selected timezone: Setting hostname Setting keyboard options Setting locale Size Something is wrong with the installation medium! This is usually caused by burning tools which are not compatible with {}. Please burn the ISO image to DVD/USB using a different tool. Summary System settings Take a photo... The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. The grub bootloader was not configured properly! You need to configure it manually. The hostname is incorrect:
not more than 63 characters between periods
and not more than 255 characters total. This hostname will be the computer's name on the network. This is the name you will use to log in to your computer. This picture represents your user account. It is used in the login screen and a few other places. This will be shown in the About Me application. Timezone Timezone:  Type Unknown Update apt cache Use already-mounted /target. Use this box to test your keyboard layout. User info User settings Username:  Variant Writing filesystem mount information to /etc/fstab You chose to NOT install Grub on your system.
Without a bootloader like Grub your system might not boot.

Are you sure you want to continue? You chose to encrypt the root partition.

You will need to mount /boot on a separate non-encrypted partition (500 MB).
Without a non-encrypted /boot partition your system will be unbootable.

Encryption will erase all data from {}

Are you sure you want to continue? You chose to install Grub on a partition.
It is recommended to install Grub on a disk instead of a partition.

Only continue if you are certain that you have another bootloader already installed.

Are you sure you want to continue? You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. You need to choose a format type
for your encrypted partition (default: ext4): You need to choose a mount point for partition: Your full name Your password Your passwords do not match. Your picture Your username Your username cannot start with a digit. _Edit partitions _Expert mode disabled enabled set boot flag {} Installer Project-Id-Version: live-installer-3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-19 15:39+0100
PO-Revision-Date: 2016-01-19 14:30+0000
Last-Translator: Arjen Balfoort <schoelje@solydxk.com>
Language-Team: Japanese (http://www.transifex.com/solydxk/live-installer-3/language/ja/)
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
 <b>ã«ã¼ããã¼ãã£ã·ã§ã³ãé¸æãã¦ä¸ãã</b> <b>EFI ãã¼ãã£ã·ã§ã³ãé¸æãã¦ä¸ãã</b> root ãã¼ãã£ã·ã§ã³ã¯ã·ã¹ãã ãã¤ã³ã¹ãã¼ã«ããããã«å¿è¦ã§ãã

 - ãã¦ã³ããã¤ã³ã: /
 - æ¨å¥¨ãµã¤ãº: 30GB
 - æ¨å¥¨ãã¡ã¤ã«ã·ã¹ãã ãã©ã¼ããã: ext4
 ã·ã¹ãã ã«æ°è¦ã¦ã¼ã¶ãè¿½å ä¸­ è©³ç´°... EFI ã·ã¹ãã ãã¼ãã£ã·ã§ã³ã¯ä¸è¨ãå¿è¦ã§ã:

 - ãã¦ã³ããã¤ã³ã: /boot/efi
 - ãã¼ãã£ã·ã§ã³ãã©ã°: Boot
 - ãµã¤ãº: 100MB ä»¥ä¸
 - ãã©ã¼ãããå½¢å¼: vfat ã¾ãã¯ fat32
  é©ç¨ ã¤ã³ã¹ãã¼ã©ãçµäºãã¦ããããã§ããï¼ / ã«å²ãå½ã¦ /boot/efi ã¸ã¢ãµã¤ã³ /home ã«å²ãå½ã¦ èªåã­ã°ã¤ã³ èªåã­ã°ã¤ã³: æ»ã ç¶ããåã«å¯¾è±¡ã®ãã¡ã¤ã«ã·ã¹ãã ã /target ã¸ãã¦ã³ããã¦ãã ãã ä»ã®ç»åãåç§... ãã¡ã¤ã«ã¤ã³ããã¯ã¹ãè¨ç®ãã¦ãã¾ã... è¿½å ã­ã±ã¼ã«ããã±ã¼ã¸ããã¦ã³ã­ã¼ãã»ã¤ã³ã¹ãã¼ã«ã§ãã¾ãã: ã¤ã³ã¿ã¼ãããã«æ¥ç¶ãã¦ãã¾ãã
è¨­å®ã¯é¸æããè¨èªã«è¨­å®ããã¾ã ãã¼ãã­ã¼ãã¼ãç¢ºèªãã¦ãã¾ã APT ãæ¶å»ãã¦ãã¾ã ã¯ãªãã¯ãã¦ç»åãå¤æ´ Plymouth ã®è¨­å®ä¸­ ãã¼ãã­ã¼ãã¼ãè¨­å®ãã¦ãã¾ã initramfs ã®è¨­å®ä¸­ sensors ã®è¨­å®ä¸­ ã³ãã¼ä¸­ å½ æ°ã·ã¹ãã ã§ãã¦ã³ããããã¡ã¤ã«ã·ã¹ãã ç¨ã® /tar/etc/fstab ãçæãã¦ãã ãããç¾å¨ /target ã§ãã¦ã³ãããã¦ãã¾ããï¼ãã¦ã³ãã®ãã¹ã¨ãã¦ãã /target æ¥é ­è¾ã¯å¤ãã¦ãã ããï¼ ããã¤ã¹ /dev /proc /sys /etc ãªã©ã®ä»®æ³ããã¤ã¹ã /target/ ã«ãã¦ã³ãããªãã§ãã ãã GRUB ãã¤ã³ã¹ãã¼ã«ããªã ããã«ã¯ãªãã¯ã§ /target/etc/fstab ã«æ¥ç¶ãã¾ããæ°ã·ã¹ãã ã§æåã®èµ·åãããã®ã§ãã/target ãã«ã¬ã³ãã¨ãã¦ãã¦ã³ããã¾ã ã¤ã³ã¹ãã¼ã«ä¸­ /target ã« chroot ãããæ°ã·ã¹ãã ã®ããã«æ§ããªããã±ã¼ã¸ãã¤ã³ã¹ãã¼ã«ãã¾ã ã¤ã³ã¹ãã¼ã«ä¸­ /etc/fstab ã®æ¸ãè¾¼ã¿ãè¦æ±ãã¾ã ãã¼ãã£ã·ã§ã³ãç·¨é æå·å {} ãæå·åã {} ã§ãã©ã¼ããã %(partition)s ãæå·å... æå·å æå·åãã¹ã¯ã¼ã æå·åã«ãããæ¬¡ã®å¨ãã¼ã¿ãæ¶å»ããã¾ãã {}

ç¶ãã¦ãããããã§ããï¼ æå·å/ãã¹ã¯ã¼ã æ°ã·ã¹ãã ã¸å¥ã£ã¦ãã¾ã... ã¨ã©ã¼ æ¡å¼µãã¼ãã£ã·ã§ã³ ãã¡ã¤ã«ã·ã¹ãã ãªãã¬ã¼ã·ã§ã³ ãã©ã¼ããã ãã©ã¼ããã {} as {} %(partition)s ã %(format)s ã¸ãã©ã¼ãããä¸­... é²ã ç©ºãå®¹é GRUB GRUB ã¤ã³ã¹ãã¼ã« ãã¹ãå ãã¹ãå:  æå¹ã®å ´åãã·ã¹ãã éå§ã§ã­ã°ã¤ã³ç»é¢ãé£ã°ããèªåçã«ãã¹ã¯ãããç»é¢ã¸ç§»ãã¾ã ãããã®æå³ãåãããªãå ´åã¯ãæ»ã£ã¦æåãã¼ãã£ã·ã§ã³ç®¡çãå¤ãã¦ä¸ãã ã¤ã³ã¹ãã¼ã« GRUB ã {} ã¸ã¤ã³ã¹ãã¼ã« è¿½å ã­ã¼ã«ã©ã¤ãºããã±ã¼ã¸ã®ã¤ã³ã¹ãã¼ã«  "sudo chroot /target" ã«ãã£ã¦æåã®èµ·åã§å¿è¦ã¨ããããã±ã¼ã¸ã apt-get/aptitude ãç¨ãã¦ã¤ã³ã¹ãã¼ã«ãã¾ã (mdadmãcryptsetupãdmraid ãªã©) ãªãã¬ã¼ãã£ã³ã°ã·ã¹ãã ã®ã¤ã³ã¹ãã¼ã« ã¤ã³ã¹ãã¼ã«ãã¼ã« ã¤ã³ã¹ãã¼ã«ã¨ã©ã¼ ã¤ã³ã¹ãã¼ã«å®äº ã¤ã³ã¹ãã¼ã«ãå®äºãã¾ãããã³ã³ãã¥ã¼ã¿ãåèµ·åãã¦æ°ããªã·ã¹ãã ãä½¿ç¨ãã¾ããï¼ ã¤ã³ã¹ãã¼ã«ã¯ä¸æåæ­¢ä¸­ã§ããã¤ã³ã¹ãã¼ã«ãçµããããã«æ¬¡ã¸ãã¯ãªãã¯ããåã«ãæéã«ãã¼ã¸ã®æç¤ºãèª­ãã§ãã ãã ã¤ã³ã¹ãã¼ã«ã¯ä¸­æ­ããã¾ã: ã«ã¹ã¿ã ã¤ã³ã¹ãã¼ã«ãçµãããã¦ä¸ãã ã¤ã³ã¹ãã¼ã«ã®ä¸æåæ­¢ ãã¼ãã­ã¼ãã¼ãã¤ã³ã¹ãã¼ã«ãã¦ãã¾ã ãã©ã¤ãã¼ã®ã¤ã³ã¹ãã¼ã«ä¸­ {} ãã¤ã³ã¹ãã¼ã«... ã­ã¼ãã¼ãã®ã¬ã¤ã¢ã¦ã ã­ã¼ãã¼ãã¬ã¤ã¢ã¦ã:  ã©ãã« ã©ãã« (ãªãã·ã§ã³) è¨èª è¨èª:  ã¬ã¤ã¢ã¦ã ã©ã¤ãã¤ã³ã¹ãã¼ã© ã­ã¼ã«ã©ã¤ãº AbiWord ã®ã­ã¼ã«ã©ã¤ãºä¸­ Firefox ã®ã­ã¼ã«ã©ã¤ãºä¸­ KDE ã®ã­ã¼ã«ã©ã¤ãºä¸­ LibreOffice ã®ã­ã¼ã«ã©ã¤ãºä¸­ Thunderbird ã®ã­ã¼ã«ã©ã¤ãºä¸­ ããã±ã¼ã¸ã®ã­ã¼ã«ã©ã¤ãºãè¡ã£ã¦ãã¾ã ã·ã¹ãã èµ·åæã«èªåã­ã°ã¤ã³ãã è«çãã¼ãã£ã·ã§ã³ ã¢ãã« ãã¦ã³ããã¤ã³ã ãã¦ã³ã {}{} as {} %(partition)s ã %(mountpoint)s ã«ãã¦ã³ããã¦ãã¾ã ã¤ã³ã¿ã¼ãããã«æ¥ç¶ã§ãã¾ãã ãã¼ããã©ã¤ã {disk_description} ã«ãã¼ãã£ã·ã§ã³ãã¼ãã«ãããã¾ããããã¼ãã£ã·ã§ã³ãä½æãã¾ãã? æ³¨æ: ãã®ä½æ¥­ã¯ãã£ã¹ã¯ä¸ã®ããã¹ã¦ã®ãã¼ã¿ããæ¶å»ãã¾ã ç¶æ³ã«ãã£ã¦ updare-initramfs ãæ­£å¸¸ã«åãããã« (dm-crypt ãªã©) ãã©ã¤ãã /target/etc/fstab ãç¾ããã®ã¨åããã­ãã¯ããã¤ã¹åãä½¿ç¨ãã¦éå§ãã¦ããå¿è¦ãããããããã¾ãã æ¦è¦ ãã¼ãã£ã·ã§ã³æ§æ ãã¼ãã£ã·ã§ã³ã®æå·åãã¹ã¯ã¼ã: ä¸è¨ãç¢ºèªããã¤ã³ã¹ãã¼ã«ãçµããããããã«æ¬¡ã¸ãã¯ãªãã¯ãã¦ä¸ãã: ééããç¡ãããã«ãã¹ã¯ã¼ããï¼åå¥åãã¦ãã ãã é²ããåã«ã«ã¼ã (/) ãã¼ãã£ã·ã§ã³ããã©ã¼ããããããã¡ã¤ã«ã·ã¹ãã ãæå®ãã¦ãã ãã æåã§ãã¼ãã£ã·ã§ã³ã®ç®¡çãè¡ã£ã¦ãã ãã ãã¹ãåãå¥åãã¦ãã ãã ã¦ã¼ã¶ã¼ã¢ã«ã¦ã³ãã®ãã¹ã¯ã¼ããå¥åãã¦ãã ãã ã¦ã¼ã¶ã¼åãå¥åãã¦ãã ãã ãã«ãã¼ã ãå¥åãã¦ãã ãã ãã¼ãã£ã·ã§ã³ã®æå·åãã¹ã¯ã¼ããå¥åãã¦ä¸ãã: çµäº çµäºï¼ æ°å:  åèª­è¾¼ åãå¤ãå¯è½:  VirtualBox ãåé¤ ã©ã¤ãè¨­å® (ããã±ã¼ã¸) ãåé¤ãã¦ãã¾ã os-prober ãåé¤ä¸­ ã¿ã¤ã ã¾ã¼ã³ã®é¸æ ã¿ã¤ã ã¾ã¼ã³ã®é¸æ ãã¹ãåãè¨­å®ãã¦ãã¾ã ã­ã¼ãã¼ããªãã·ã§ã³ãè¨­å®ãã¦ãã¾ã ã­ã±ã¼ã«ãè¨­å®ãã¦ãã¾ã ãµã¤ãº ã¤ã³ã¹ãã¼ã«ã¡ãã£ã¢ã¨éããã®ãæ¤åºããã¾ããï¼ããã¯éå¸¸äºææ§ãªããã¼ã«ã§æ¸ãè¾¼ãã ãã¨ã«ãã£ã¦çºçãã¾ããå¯¾è±¡ {} å¥ã®ãã¼ã«ãä½¿ç¨ãã¦ãDVD/USB ã« ISO ã¤ã¡ã¼ã¸ãæ¸ãè¾¼ãã§ä¸ããã æ¦è¦ ã·ã¹ãã è¨­å® åçãæ®ã.. EFI ãã¼ãã£ã·ã§ã³ãå°ãããã¾ãã100MB ä»¥ä¸å¿è¦ã§ã EFI ãã¼ãã£ã·ã§ã³ã¯ VFAT ã§ãã©ã¼ããããã¦ä¸ãã Grub ãã¼ãã­ã¼ãã¼ãæ­£ããè¨­å®ããã¦ãã¾ãã! æåã§è¨­å®ããå¿è¦ãããã¾ãã ãã¹ãåãæ­£ããããã¾ããã
. åºåãã®éã¯ 63 æå­ã
å¨ä½ 255 æå­ä»¥åã§ãªããã°ããã¾ããã ãã¹ãåã¯ãããã¯ã¼ã¯ã«ãããã³ã³ãã¥ã¼ã¿åã¨ãªãã¾ã ããã¯ã³ã³ãã¥ã¼ã¿ã¸ã­ã°ã¤ã³ããæã«ä½¿ç¨ããååã§ã ãã®åçã¯ããªãã®ã¢ã«ã¦ã³ãã§ä½¿ããã¾ããã­ã°ã¤ã³ç»é¢ããã®ä»ã®å ´æã§å©ç¨ããã¾ã ããã¯ About Me ã¢ããªã±ã¼ã·ã§ã³ã§è¡¨ç¤ºããã¾ã ã¿ã¤ã ã¾ã¼ã³ ã¿ã¤ã ã¾ã¼ã³:  ç¨®é¡ æªè¨­å® apt ã­ã£ãã·ã¥ã®æ´æ° ãã§ã« /target ããã¦ã³ãä½¿ç¨ãã¦ãã¾ã ãã®ããã¯ã¹ãä½¿ã£ã¦ã­ã¼ãã¼ãã¬ã¤ã¢ã¦ããç¢ºèªãã¦ãã ãã ã¦ã¼ã¶ã¼æå ± ã¦ã¼ã¶ã¼è¨­å® ã¦ã¼ã¶ã¼å:  ç°å½¢ /etc/stab ã«ãã¡ã¤ã«ã·ã¹ãã ã®ãã¦ã³ãæå ±ãæ¸è¾¼ä¸­ ã·ã¹ãã ã« GRUB ãã¤ã³ã¹ãã¼ã«ãããªããããé¸æãã¾ããã
ãã¼ãã­ã¼ãã¯ãªãã¨ã·ã¹ãã ãèµ·åã§ããªãå ´åãããã¾ãã

ç¶ãã¦ãããããã§ããï¼ ã«ã¼ããã¼ãã£ã·ã§ã³ãæå·åããäºãé¸æãã¾ããã

ç¬ç«ããæå·åãã¦ããªããã¼ãã£ã·ã§ã³ã /boot ã§ãã¦ã³ãããå¿è¦ãããã¾ãã (500 MB)
/boot æå·åããªãç¶æã«ããªãã¨ã·ã¹ãã ãèµ·åã§ããªããªãã¾ãã

æå·åã«ãããæ¬¡ã®å¨ãã¼ã¿ãæ¶å»ããã¾ã {}

ç¶ãã¦ãããããã§ããï¼ ãã¼ãã£ã·ã§ã³ã« GRUB ãã¤ã³ã¹ãã¼ã«ããããé¸æãã¾ããã
ãã¼ãã£ã·ã§ã³ã®ãã£ã¹ã¯ã« GRUB ãã¤ã³ã¹ãã¼ã«ãããã¨ããå§ããã¾ãã

å¥ã®ãã¼ãã­ã¼ãããã§ã«ã¤ã³ã¹ãã¼ã«ããã¦ãããã¨ãç¢ºå®ãªå ´åã¯ç¶ãã¦ä¸ããã

ç¶ãã¦ãããããã§ããï¼ æåã«ãããã¼ãã£ã·ã§ã³ç®¡çãé¸æãã¾ããããã®æ©è½ã¯ãè©³ããã¦ã¼ã¶ã¼åããã§ã æå·åãããã¼ãã£ã·ã§ã³ã®
ãã©ã¼ãããç¨®é¡ãæå®ãã¦ä¸ãã (ext4 ãªã©): ãã¼ãã£ã·ã§ã³ã®ãã¦ã³ããã¤ã³ããé¸æãã¦ä¸ãã: æ°å ãã¹ã¯ã¼ã ãã¹ã¯ã¼ããä¸è´ãã¾ãã ããªãã®ç»å ã¦ã¼ã¶ã¼å ã¦ã¼ã¶ã¼åã¯æ°å­ããã¯ãã¾ãäºã¯ã§ãã¾ããã ãã¼ãã£ã·ã§ã³ãç·¨é(_E) ã¨ã­ã¹ãã¼ãã¢ã¼ã(_E) ç¡å¹ æå¹ boot ãã©ã°ã®è¨­å® {} ã¤ã³ã¹ãã¼ã© 