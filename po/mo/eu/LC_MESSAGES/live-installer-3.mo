��    8      �  O   �      �  (  �               "     2     F     S     j  F   q     �     �     �  
   �     �  
   �               )  Y   ?     �     �     �     �  
   �     �     �     �     �  (        4     =     J  &   V     }     �     �     �     �     �     �  :   �  ,   !	  a   N	     �	  
   �	     �	  	   �	     �	  
   �	     �	  ^   �	     S
     b
     p
     }
  �  �
  A  #     e     v     �     �     �  !   �     �  1   �     )     ;     [     c     o     ~     �     �     �  \   �     &     F     [  	   r  
   |     �     �     �     �  ,   �     �     �       %        ;     T     o     �     �  	   �     �  <   �  +     u   <     �     �     �     �     �            c   $     �     �     �     �         /                         #   4   +   "   )      0                *                                           1         '       
      $   8   2          3                            .       7   (   5       %   -   6   !                                         	   &          ,    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Checking bootloader Cleaning APT Configuring bootloader Device During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Model Mount point Mounting %(partition)s on %(mountpoint)s Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-13 09:38+0200
PO-Revision-Date: 2014-09-03 21:39+0000
Last-Translator: Asier Iturralde Sarasola <Unknown>
Language-Team: Basque <eu@li.org>
Language: eu
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:49+0000
X-Generator: Launchpad (build 17196)
 Ondorengo baldintzak betetzen dituen EFI sistema-partizio bat behar da:

 - Muntatze puntua: /boot/efi
 - Partizioaren banderak: Bootable
 - Tamaina: 100MB baino handiagoa
 - Formatua: vfat edo fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  / tokira esleitu Esleitu /boot/efi-ri /home tokira esleitu Abioko kargatzailea egiaztatzen APT garbitzen Abioko kargatzailea konfiguratzen Gailua Instalatzean zure /etc/fstab idatzi beharko duzu. Editatu partizioa Fitxategi-sistemaren eragiketak Aurrera Leku librea Ostalari-izena Ostalari-izena:  Instalazio tresna Instalazio-errorea Instalazioa bukatuta Instalazioa osatu da. Ordenagailua berrabiarazi nahi duzu sistema berria erabiltzen hasteko? Abioko kargatzailea instalatzen Teklatuaren diseinua Teklatuaren diseinua:  Hizkuntza Hizkuntza  Diseinua Kokapena Eredua Muntatze-puntua %(partition)s muntatzen %(mountpoint)s -(e)n Deskribapen orokorra Partizioak egitea Benetako izena:  Konfigurazio bizia kentzen (paketeak) Hautatutako ordu-eremua: Ekipoaren izena prestatzen Teklatuaren hautapenak ezartzen Konfigurazio lokala ezartzen Tamaina Laburpena Sistemaren ezarpenak EFI partizioa txikiegia da. Gutxienez 100MB izan behar ditu. EFI partizioak vfat formatua izan behar du. Irudi honek zure erabiltzaile-kontua irudikatzen du. Saio hasierako pantailan eta beste leku batzuetan erabiltzen da. Ordu-eremua Ordu zona:  Mota Erabiltzailearen informazioa Erabiltzailearen ezarpenak Erabiltzaile-izena:  Aldaera Zure partizioak eskuz kudeatzea hautatu duzu, ezaugarri hau ERABILTZAILE AURRERATUENTZAT SOILIK da. Zure izen osoa Zure pasahitza Zure irudia Zure erabiltzaile-izena 