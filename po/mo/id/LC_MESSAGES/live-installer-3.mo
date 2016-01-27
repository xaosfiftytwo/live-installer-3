��    ?        Y         p  (  q     �     �     �  E   �          $     1  �   H       H     �   _  F   �     C	     R	     h	  
   p	     {	  
   �	  �   �	     A
     S
     f
  Y   |
     �
     �
     �
       
        "     )     6     J     P  (   \  �   �     T     ]     j  &   v     �     �     �     �     �     �     �  :     ,   A  a   n     �  
   �     �  	   �     �  
          ^        s     �     �     �  �  �  E  H     �     �     �  K   �          *     ;  �   V  	   -  N   7  �   �  T   3     �  !   �     �     �  	   �  
   �  �   �     �     �     �  a   �     U     i     �     �     �  
   �     �     �     �  
   �  ,   �           	   $  
   .  .   9     h     {     �     �     �  	   �     �  :   �  &   %  h   L     �     �     �     �     �     �       ^        r     �     �     �     ?                     8             $   =              )   "   6                 /                                           7      3          5      #       <   (       >                       1   %       0   9      	      4   '   &   
      2         ;       -   *   :                ,                     .   !       +    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Before continuing, please mount your target filesystem(s) at /target. Checking bootloader Cleaning APT Configuring bootloader Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-27 14:53+0100
PO-Revision-Date: 2014-09-02 11:05+0000
Last-Translator: Andika Triwidada <andika@gmail.com>
Language-Team: Indonesian <id@li.org>
Language: id
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 Sebuah partisi sistem EFI dibutuhkan dengan persyaratan sebagai berikut:

 -Tempat memasang: /boot/efi
 -Flag Partisi: Bootable
 -Ukuran: Lebih besar dari 100MB
 -Format: vfat atau fat32

Untuk meyakinkan kompatibilitas dengan Windows kami menganjurkan anda menggunakan partisi pertama pada disk sebagai partisi sistem EFI.
  Menetapkan ke / Tentukan ke /boot/efi Menetapkan pada /home Sebelum melanjutkan, silakan mount sasaran sistem berkas anda pada /target. Mengecek bootloader Membersihkan APT Mengkonfigurasi bootloader Buat /target/etc/fstab untuk sistem berkas sebagaimana itu akan dipasang pada sistem baru anda, menyesuaikan dengan yang sekarang telah terpasang pada /target (tanpa menggunakan awalan /target pada path pemasangan) Perangkat JANGAN pasang perangkat virtual seperti /dev, /proc, /sys, dll  pada /target/. Cek ulang bahwa /target/etc/fstab anda benar, cocokkan apa yang akan dilakukan sistem baru anda pada booting pertama, dan cocokkan apa yang saat ini terpasang pada /target. Selama proses instalasi, anda akan dibutuhkan untuk menulis sendiri /etc/fstab anda. Ubah partisi Pekerjaan-pekerjaan sistem berkas Teruskan Ruang kosong Nama host Nama Host  Instal beberapa paket yang mungkin diperlukan untuk booting pertama (mdadm, cryptsetup, dmraid, dsb) dengan menggunakan "sudo chroot /target" diikuti dengan instalasi yang relevan menggunakan apt-get/aptitude. Alat Pemasangan Instalasi mengalami gangguan Instalasi selesai Instalasi telah lengkap. Apakah anda ingin merestart komputer anda untuk menggunakan sistem baru? Memasang bootloader Tata letak papan ketik Susunan papan ketik  bahasa Bahasa:  Tata letak Pengaturan Kedaerahan melokalisir paket Peraga Titik kait Mengaitkan %(partition)s pada %(mountpoint)s Perhatikan bahwa supaya update-intramfs dapat bekerja dengan baik pada beberapa kasus (seperti pada dm-crypt), anda mungkin perlu memiliki drive yang saat ini terpasang menggunakan nama perangkat blok yang sama  sebagaimana yang muncul pada /target/etc/fstab. Ikhtisar Pembagian Nama asli  Menghapus konfigurasi yang aktif (paket-paket) Memilih zona waktu Pengaturan hostname Pengaturan pilihan keyboard Pengaturan lokal Ukuran Ringkasan Pengaturan-pengaturan sistem Partisi EFI terlalu kecil. Sekurang-kurangnya harus 100MB. Partisi EFI harus diformat dalam vfat. Gambar ini merupakan akun pengguna anda. Ini digunakan pada halaman masuk dan dibeberapa tempat lainnya. Wilayah waktu Zona Waktu  Tipe Informasi pengguna Pengaturan pengguna Nama Pengguna:  Variasi Anda memilih untuk mengelola partisi secara manual, fitur isi hanya untuk PENGGUNA YANG MAHIR. Nama lengkap Anda Kata sandi Anda Gambar anda Nama pengguna Anda 