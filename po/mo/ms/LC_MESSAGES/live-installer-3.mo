��    �      �  �   l      0  *   1  &   \  J   �  �   �     U     s  (       �  ,   �     �     �     �               -     2  @   Q     �  �   �     8     L     Y     v     �     �     �  �   �     i  C   p     �  �   �  �   [  F   �     %     4     <     X  
   u     �  J   �     �     �               $  	   :     D  *   T       
   �     �     �     �     �  
   �  {   �  c   H     �     �  %   �  �   �     �     �     �     �  Y   �  �   L  =   �          !     <     R     e     v     �     �     �     �  
   �     �     �     �     �     �               2     I  #   ]     �     �     �     �  (   �     �     �  �        �  �   �     �     �  %   �  F   �  9     U   U  7   �     �  0   �  '   /      W      r     �   -   �!     �!     �!     �!     �!  
   �!     �!  &   "     -"     @"     M"     ]"     p"     �"     �"     �"  2   �"     �"  �   �"     �#     �#     �#     �#  :   �#  ,   $  S   E$  n   �$  9   %  9   B%  a   |%  /   �%     &  
   &     "&     '&     D&     \&     d&     z&     �&     �&  *   �&  	   �&     �&  
   �&     '  <   '  2   L'  �   '  
  (  �   )  ^   �)  U   ^*  N   �*  /   +     3+     B+     P+     m+     z+  (   �+     �+     �+     �+     �+     �+     �+     �+  �  ,  '   �-  '   �-  @   .  y   E.      �.     �.  5  �.     #0  &   ,0     S0     a0     u0     �0     �0  
   �0     �0  >   �0     1  |   31     �1     �1  !   �1     �1     2     )2     92  �   @2     �2  B   �2     =3  �   R3  �   �3  I   j4     �4     �4     �4     �4     5     5  A   )5     k5     �5     �5     �5     �5     �5     �5  0   �5  
   6     "6     /6     46     D6     d6  
   m6  w   x6  V   �6     G7     P7  0   i7  �   �7     Y8     q8     �8     �8  ]   �8  i   9  8   r9     �9     �9     �9     �9     �9     :     :     9:     ?:     N:     U:  	   ^:     h:     |:  &   �:  &   �:  "   �:  *   �:  *   &;     Q;  *   f;     �;     �;     �;     �;  )   �;     �;     <  �   ,<     �<  �   �<     �=     �=  )   �=  Y    >  K   Z>  I   �>  3   �>     $?  ,   9?  &   f?     �?     �?  �   �?  4   �@     �@     �@     �@     A     A     A  %   :A     `A  
   ~A     �A     �A     �A      �A     �A     �A  3   B     BB  �   GB  	   C     C     C     +C  =   ;C  (   yC  N   �C  q   �C  ?   cD  >   �D  d   �D  0   GE  	   xE  
   �E     �E     �E     �E     �E     �E     �E     
F  (   )F  3   RF     �F     �F     �F     �F  =   �F  ?   �F  �   >G  *  �G  �   �H  j   �I  d   2J  D   �J  -   �J     
K     K     +K     DK     PK  1   cK     �K     �K     �K     �K     �K  
   �K     �K     i       �       �   �   J   U   y   {   [   �   A       f   �   d      l          �            �       +   L   �       �   �   �          8   _   H      &           �             #   �   Z   �   �   =      I      �   ?       �   -   x   �       �   �       X   a       b       v       $       !   W   z   ]   k      �   �       �              j   Y      R   C       G   �       `   F      s   h   >      6   n          �   r   ^       �   p   )   Q   m   7   �       u   �       .               <   �       D   �   B      \   �   |   �           5       T   �   "   �      '       :   �   t       }   �   w       �   V          E       @   �               3   P   �          2              �   �      �   �   1       N                  �   g       M   *   q   �       �   K           ~   �          �   	   (       c       ,   �         �   �           S              �   /       0   O      �   
   �   e   4   %   9   o       ;    <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> A chrooted terminal and fstab will be opened after you close this message. A root partition is needed to install the system.

 - Mount point: /
 - Recommended size: 30GB
 - Recommended filesystem format: ext4
 Adding new user to the system Advanced... An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Apply Are you sure you want to quit the installer? Assign to / Assign to /boot/efi Assign to /home Automatic login Automatic login:  Back Base filesystem does not exist Before continuing, please mount your target filesystem(s) at %s. Browse for more pictures... Cannot download and install additional locale packages: no internet connection
Configuration will still be set to your selected language. Checking bootloader Cleaning APT Click to change your picture Configuring bootloader Configuring sensors Copying Country Create %s/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at %s (without using the %s prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on %s/. Do not install Grub Double-check that your %s/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at %s. During the install, you will be given time to chroot into %s and install any packages that will be needed to boot your new system. During the install, you will be required to write your own /etc/fstab. Edit partition Encrypt Encrypt {} and format as {} Encrypting %(partition)s ... Encryption Encryption password Encryption will erase all data from {}

Are you sure you want to continue? Encryption/password Entering the system ... Error Extended partition Filesystem operations Format as Format {} as {} Formatting %(partition)s as %(format)s ... Forward Free space Grub Grub install Grub not configured Hostname Hostname:  If enabled, the login screen is skipped when the system starts, and you are signed into your desktop session automatically. If you aren't sure what any of this means, please go back and deselect manual partition management. Install Install Grub on {} Install additional localized packages Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot %s" followed by the relevant apt-get/aptitude installations. Install the operating system Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation. Installation is paused: please finish the custom installation Installation paused Installing EFI packages... Installing bootloader Installing drivers Installing {}... Keyboard layout Keyboard layout:  Label Label (optional) Language Language:  Layout Live Installer Localization Localizing AbiWord Localizing Firefox Localizing KDE Localizing LibreOffice Localizing Thunderbird Localizing packages Log in automatically on system boot Logical partition Model Mount point Mount {}{} as {} Mounting %(partition)s on %(mountpoint)s No %s file found! No internet connection No partition table was found on the hard drive: {disk_description}. Do you want the installer to create a set of partitions for you? Note: This will ERASE ALL DATA present on this disk. Not mounted Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in %s/etc/fstab. Overview Partitioning Password for the encrypted partition: Please do the following and then click Forward to finish installation: Please enter your password twice to ensure it is correct. Please indicate a filesystem to format the root (/) partition with before proceeding. Please make sure you wish to manage partitions manually Please provide a hostname. Please provide a password for your user account. Please provide a username without -oem. Please provide a username. Please provide your full name. Please, click on the network manager's system tray icon to connect to the internet before you continue.

You can still install %s without an internet connection.
Without an internet connection your system will not be upgraded and some packages cannot be localized. Provide an encryption password for partition: Quit Quit? Real name:  Refresh Removable: Removing VirtualBox Removing live configuration (packages) Removing os-prober Select image Select timezone Selected timezone: Setting hostname Setting keyboard options Setting locale Setup finished Setup is now complete. The system will now reboot. Size Something is wrong with the installation medium! This is usually caused by burning tools which are not compatible with {}. Please burn the ISO image to DVD/USB using a different tool. Summary System settings Take a photo Take a photo... The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. The grub bootloader was not configured properly! You need to configure it manually. The hostname is incorrect:
not more than 63 characters between periods
and not more than 255 characters total. This hostname will be the computer's name on the network. This is the name you will use to log in to your computer. This picture represents your user account. It is used in the login screen and a few other places. This will be shown in the About Me application. Timezone Timezone:  Type Unable to convert the image. Unable to take a photo. Unknown Unmounting partitions Update apt cache Update the new system Use already-mounted %s. Use this box to test your keyboard layout. User info User settings Username:  Variant Verify that fstab is correct (use blkid to check the UUIDs). Writing filesystem mount information to /etc/fstab You chose to NOT install Grub on your system.
Without a bootloader like Grub your system might not boot.

Are you sure you want to continue? You chose to encrypt the root partition.

You will need to mount /boot on a separate non-encrypted partition (500 MB).
Without a non-encrypted /boot partition your system will be unbootable.

Encryption will erase all data from {}

Are you sure you want to continue? You chose to install Grub on a partition.
It is recommended to install Grub on a disk instead of a partition.

Only continue if you are certain that you have another bootloader already installed.

Are you sure you want to continue? You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. You must first manually mount your target filesystem(s) at %s to do a custom install! You need to choose a format type
for your encrypted partition (default: ext4): You need to choose a mount point for partition: Your full name Your password Your passwords do not match. Your picture Your username Your username cannot start with a digit. _Edit partitions _Expert mode disabled enabled set boot flag {} Installer {} OEM Setup Project-Id-Version: live-installer-3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-03-26 20:31+0100
PO-Revision-Date: 2016-03-25 17:50+0000
Last-Translator: Alderson Robert Jenet <alderson@outlook.my>
Language-Team: Malay (http://www.transifex.com/solydxk/live-installer-3/language/ms/)
Language: ms
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
 <b>Sila gunakan root (/) partition.</b> <b> Sila pilih EFI untuk partition. <b> Sila tunggu terminal chrooted dan fstab akan dibuka selepas ini. Root partition diperlukan untuk memasang sistem
Mount point :/
Saiz disyorkan 30GB
Fail Sistem disyorkan berformat: ext4
 Tambah pengguna baru pada sistem Lebih lanjut Satu sistem partisyen EFI diperlukan dengan keperluan berkaitan:

 - Tempat pautan: /boot/efi
 - Tanda partisyen: Bootable
 - Saiz: Lebih daripada 100MB
 - Format: vfat atau fat32

Untuk memastikan keserasian dengan Windows, kami sarankan anda menggunakan partisyen disk pertama sebagai sistem partisyen EFI
  Tetapkan Adakah anda ingin hentikan pemasangan? Tetapkan ke / Tetapan ke boot/efi Tetapkan ke /home Login secara automatik Login secara automatik Sebelumnya Sistem fail asas tidak ditemui Sebelum diteruskan, sila lekap sistem fail sasaran anda di %s. Mencari lebih gambar Tidak dapat memuat turun pada pemasangan pakej lokal: tiada sambungan internet
Tetapan konfigurasi bahasa anda akan dipilih. Memeriksa pemuat but Membersih APT Sila klik untuk tukar gambar anda Menkonfigur pemuat but Sensors sedang dikonfigurasi Sedang menyalin Negara Cipta %s/etc/fstab untuk sistemfail kerana ia akan dipautkan ke sistem baru anda, yang sepadan dengan pautan kini di %s (tanpa menggunakan awalan %s dalam laluan pautan mereka). Peranti JANGAN lekap peranti maya seperti /dev, /proc, /sys, etc pada %s/. Jangan masukkan Grub Semak semula %s/etc/fstab anda betul, sepadan dengan sistem baru anda yang akan but pertama kali, dan sepadan dengan apa yang dipautkan di %s. Semasa melakukan pemasangan anda diberi masa untuk chroot kedalam %s dan memasang sebarang pakej diperlukan untuk boot pada sistem anda. Ketika pemasangan, anda diperlukan untuk menulis /etc/fstab anda sendiri. Edit Partition Enkripsi Enkripsi {} dan formatkan ke {} Mengenkripsi %(partition)s ... Enkripsi Enkripsi kata laluan Enkripsi akan memadam semua data dari
Adakan anda ingin teruskan? Enkripsi/Kata laluan Memasukkan sistem Salah Partition extended Operasi sistem fail Format sebagai Formatkan {} sebagai {} Sedang memformat %(partition)s ke %(format)s ... Berikutnya Ruang kosong Grub Memasukkan Grub Belum ada konfigurasi pada Grub Nama hos Nama hos:  Jika ditetapkan, Skrin login anda akan diskip apabila sistem bermula dan anda akan melogin ke desktop secara automatik. Adakah anda pasti? Sila ke menu sebelumnya dan tidak memilih tetapan partition manual. Memasang Sila masukkan Grub di {} Memasang pakej tambahan yang telah dikenal pasti Pasang mana-mana pakej yang mungkin diperlukan untuk but pertama kali (mdadm, cryptsetup, dmraid, etc) dengan memanggil "sudo chroot %s" diikuti dengan installasi apt-get/aptitude berkaitan. Memasang sistem operasi Alat Pemasangan Kesilapan pemasangan  Pemasangan selesai Pemasangan kini selesai. Anda mahu mulakan semula komputer anda untuk guna sistem baharu ini? Pemasangan berhenti. Sila baca arahan dipaparan sebelum klik butang berikutnya untuk habiskan pemasangan. Pemasangan dihentikan: Sila lengkapkan pemasangan custom Pemasangan dihentikan Memasang pakej EFI Memasang pemuat but Memasang drivers Sedang memasang {}... Paparan kekunci Bentangan papan kekunci:  Label Label(Pilihan) Bahasa Bahasa:  Bentangan Pemasangan langsung Penyetempatan Memasukkan AbiWord ke dalam pemasangan Memasukkan Firefox ke dalam pemasangan Memasukkan KDE ke dalam pemasangan Memasukkan LibreOffice ke dalam pemasangan Memasukkan Thunderbird ke dalam pemasangan Menyetempatkan pakej Login secara automatik kedalam sistem boot Partition Logikal Model Titik lekap Mountkan {}{} ke {} Melekap %(partition)s pada %(mountpoint)s Tiada %s sebarang fail ditemui! Tiada sambungan internet Maaf tiada sistem partition ditemui. Adakah anda ingin membuat sistem partition anda sekarang? Nota: INI AKAN MEMADAM SEGALA DATA didalam cakera keras anda. Tidak dimount Perhatikan bahawa untuk update-initramfs untuk berfungsi dengan baik dalam sesetengah keadaan (seperti dm-crypt), anda mungkin perlu pautkan storan menggunakan nama peranti blok yang sama ketika ia muncul di %s/etc/fstab. Keseluruhan Partition dijalankan Kata laluan untuk enkripsi partition anda Sila tetapkan yang berikutnya kemudian klick butang Berikutnya untuk teruskan pemasangan. Sila masukkan kata laluan anda dan sahkan kata laluan anda sekiranya betul. Sila nyatakan sistem fail ke format root (/) partition sebelum dimulakan. Pastikan anda ingin uruskan partition secara manual Pilih nama hos anda. Pilih kata laluan untuk akaun pengguna anda. Sila sediakan nama pengguna tanpa -oem Pilih nama pengguna anda Pilih nama penuh anda. Sila klik pada sistem network manager di ikon tray untuk penyambungan internet sebelum anda teruskan

Anda boleh pasangkan %s tanpa internet.
Internet adalah diperlukan untuk mengemas kini sistem anda bersama pakej yang belum dapat dikenal pasti. Pilih kata laluan untuk enkripsi pada partition anda Keluar Keluar? Nama sebenar:  Refresh Boleh Alih: VirtualBox sedang disingkirkan Membuang konfigurasi langsung (pakej) os-prober sedang disingkirkan Pilih imej Pilih zon waktu Zon waktu terpilih: Tetapan nama hos Menetapkan pilihan papan kekunci Menetapkan penempatan Pemasangan telah selesai Pemasangan telah selesai. Sistem sedia untuk reboot Saiz Sesuatu kesilapan berlaku pada pemasangan medium! Mungkin disebabkan oleh alatan penyalin tidak sesuai dengan {}. Pastikan menyalin dari ISO imej ke DVD/USB menggunkan aplikasi yang betul.  Ringkasan Tetapan sistem Ambil gambar Ambil gambar... Sekatan EFI terlalu kecil. Ia mesti sekurang-kurangnya 100MB. Sekatan EFI mesti diformat sebagai vfat. Belum ada tetapan konfigurasi pada Grub! Konfigurasi secara manual diperlukan. Nama hosname anda salah
tidak melebihi 63 karakter diantara ruang
dan tidak melebihi 255 karakter keseluruhannya. Komputer anda akan menggunakan nama hos ini untuk ke rangkaian. Nama ini akan digunakan untuk log masuk kedalam komputer anda. Gambar ini mewakili akaun pengguna anda. Ia digunakan dalam skrin daftar masuk dan lain-lain tempat. Ini akan dipaparkan pada aplikasi Mengenai Anda  Zon waktu Zon masa:  Jenis Tidak dapat untuk menukar imej Gambar tidak dapat diambil Tidak diketahui Membebaskan partitions Apt cache dikemaskini Sistem baru sedang dikemaskini Pilih yang tekah di mountkan sebagai %s. Gunakan kotak ini untuk paparan papan kekunci anda. Maklumat pengguna Tetapan pengguna Nama pengguna:  Varian Pastikan fstab adalah betul (Guna bikid untuk periksa UUIDs). Sedang memasukkan informasi filesistem mount kedalam /etc/fstab Anda pilih untuk tidak memasukkan Grub kedalam sistem.
Tanpa bootloader Grub sistem anda mungkin tidak akan boot.
Adakah anda ingin teruskan? Anda pilih untuk enkripsi root partition.
Anda perlu mount /boot berasingan pada partition yang tidak dienkripsi (500 MB).
Dengan mengkripsi pada /boot partition sistem tidak akan dapat melakukan operasi boot pada permulaan.
Enkripsi akan memadam semua maklumat daripada
Adakah anda ingin teruskan? Anda pilih untuk memasukkan Grub ke dalam partition
Disyorkan untuk memasukkan Grub kedalam partition
Sila teruskan jika anda pasti anda mempunyai bootloader yang lain sebelumnya.
Adakah anda ingin teruskan? Anda telah memilih untuk mengurus partition anda secara manual, kelebihan ini untuk PENGGUNA MAHIR SAHAJA. Anda perlu mount secara manual kepada sasaran filesystems(s) ke %s untuk melakukan pemasangan custom Anda perlu pilih jenis format

pada enkripsi partition (Asal: ext4): Anda mesti pilih mount point pada partition:  Nama penuh anda Kata laluan anda Kata laluan tidak padan. Gambar anda Nama pengguna anda Nama pengguna tidak dapat digunakan sebagai digit _ubah partitions mod _Expert Matikan HIdupkan Tetapkan flag ke boot Pemasangan {} OEM Dipasang 