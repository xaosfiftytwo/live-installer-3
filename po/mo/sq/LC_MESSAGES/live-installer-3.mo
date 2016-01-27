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
          ^        s     �     �     �  �  �  D  D  	   �     �     �  Q   �  &        /  &   A  �   h     >  M   F  �   �  G   m     �  "   �     �     �            �   .     �            h   3      �     �     �     �     �     �  
   �                 -   .     \  	   ]     g     t  &   �     �      �  #   �               '     4  J   J  /   �  a   �  
   '     2     @     F     a     {     �  o   �     	          .     >     ?                     8             $   =              )   "   6                 /                                           7      3          5      #       <   (       >                       1   %       0   9      	      4   '   &   
      2         ;       -   *   :                ,                     .   !       +    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Before continuing, please mount your target filesystem(s) at /target. Checking bootloader Cleaning APT Configuring bootloader Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-27 14:53+0100
PO-Revision-Date: 2014-08-07 20:57+0000
Last-Translator: mzs.112000 <mzs.112000@gmail.com>
Language-Team: Albanian <sq@li.org>
Language: sq
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 Një ndarje sistem EFI është e nevojshme me kërkesat e mëposhtme:

 - Mount pika: / boot / efi
 - Flamujve Ndarja: Bootable
 - Size: Më të mëdha se 100MB
 - Format: vfat apo FAT32

Për të siguruar pajtueshmërinë me Windows-it ne ju rekomandojmë të përdorë ndarjen e parë e diskut si ndarjen e sistemit EFI.
  Caktoja / Cakto për /boot/efi Caktoja /home Para se të vazhdoni, ju lutem malin filesystem tuaj të synuar (s) në / target. Duke kontrolluar ngarkuesin e sistemit Duke pastruar APT Duke konfiguruar ngarkuesin e sistemit Krijo /target/etc/fstab për sistemet e file si ata do të jetë ngritur në sistemin tuaj të ri, të ngjashëm me ato që aktualisht montuar në / objektiv (pa përdorur / prefiksin synuar në vetë shtigje mali Pajisja A NUK mali pajisje virtuale të tilla si /dev, /proc, /sys, etj në /target/. Double-kontrolloni se /objektivi juaj/etc/fstab është e saktë, përputhet me atë që sistemi juaj i ri do të ketë në bagazhin e parë, dhe të përputhet me atë që është i montuar aktualisht në /objektiv. Gjatë instaluar, ju do të kërkohet për të shkruar tuaj /etc/fstab. Modifiko particionin Veprimet e sistemit të skedarëve Përpara Hapësira e lirë Emri i mbartësit Emri i mbartësit:  Install ndonjë paketa që mund të jenë të nevojshme për të boot parë (mdadm, cryptsetup, dmraid, etj) duke e quajtur "sudo chroot /objektivin" e ndjekur nga instalimet përkatëse apt-get / dhunti. Mjeti i Instalimit Gabim instalimi Instalimi përfundoi Instalimi tani është kompletuar. A doni të rinisni kompjuterin tuaj për të përdorur sistemin e ri? Duke instaluar ngarkuesin e boot Skema e tastierës Dalja e tastierës:  Gjuha Gjuha:  Dalja Lokalizimi paketa lokalizimin Modeli Pika e montimit Duke montuar %(partition)s në %(mountpoint)s Vini re se në mënyrë për te update initramfs për të punuar si duhet në disa raste (si DM-dhomë e nëndheshme), ju mund të duhet të ketë disqet duke montuar duke përdorur të njëjtin emër bllok pajisje si ato të shfaqen në /target/etc/fstab. Parapamje Particionimi Emri i vërtetë:  Duke hequr konfigurimin live (paketat) Timezone e zgjedhur: Duke vendosur emrin e mbartësit Duke vendosur opsionet e tastierës Duke vendosur lokalet Përmasa Përmbledhje Parametrat e sistemit Ndarje EFI është shumë e vogël. Ajo duhet të jetë të paktën 100MB. Ndarje EFI duhet të jetë i formatuar si VFAT. This picture represents your user account. It is used in the login screen and a few other places. Zona orare Zona Kohore:  Lloji Informacion i Përdoruesit Parametrat e përdoruesve Emri i përdruesit:  Varianti Ju keni zgjedhur për të menaxhuar ndarëse tuaj me dorë, ky tipar është për Advanced përdoruesit vetëm. Emri juaj i plotë Fjalëkalimi juaj Fotografia juaj Emri juaj i përdoruesit 