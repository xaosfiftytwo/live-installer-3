��    9      �  O   �      �  (  �               2     B     V     c     z  F   �     �     �     �  
   �        
   	          &     9  Y   O     �     �     �     �  
   �     �     �     	          #  (   /     X     a     n  &   z     �     �     �     �     �     �     �  :   
	  ,   E	  a   r	     �	  
   �	     �	  	   �	     �	  
   
     
  ^   
     w
     �
     �
     �
  �  �
  2  2     e     v     �     �     �     �     �  E   �     C     \     u     }     �  
   �     �     �  &   �  q   �     Z     y     �     �     �  	   �     �     �     �     �  7   �     ,     9     I  0   W     �     �     �     �     �     �     �  O     B   c  �   �  	   0     :     F     M     i     �  	   �  ^   �               '     6         0                         $   5   ,   #   *      1                +                          9                 2         (       
      %      3          4   !                        /       8   )   6       &   .   7   "                                         	   '          -    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Checking bootloader Cleaning APT Configuring bootloader Device During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: live-installer
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-13 09:38+0200
PO-Revision-Date: 2014-06-29 17:22+0000
Last-Translator: jackson <Unknown>
Language-Team: Hungarian
Language: hu
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:49+0000
X-Generator: Launchpad (build 17196)
 Az EFI rendszerpartícióhoz az alábbiak szükségesek:

 - Csatolási pont: /boot/efi
 - Partíció jelölés: Bootable
 - Méret: legalább 100MB
 - Fájlrendszer: VFAT vagy FAT32

A Windows kompatibilitás fenntartása érdekében javasoljuk, hogy az EFI rendszerpartíció legyen az első a lemezen.
  Csatolás ide: / Csatolás ide: /boot/efi Csatolás ide: /home Rendszerbetöltő ellenőrzése APT tisztítása Rendszerbetöltő beállítása Eszköz A telepítés során saját /etc/fstab fájlt kell majd készítenie. Partíció szerkesztése Fájlrendszer műveletek Tovább Szabad hely Gépnév Gépnév:  Telepítőeszköz Telepítési hiba A telepítés sikeresen befejeződött A telepítés befejeződött. Az új rendszer használatához újraindításra van szükség. Újraindítja most? Rendszerbetöltő telepítése Billentyűzetkiosztás Billentyűzetkiosztás:  Nyelv Nyelv:  Kiosztás Honosítás Nyelvi csomagok Modell Csatolási pont %(partition)s partíció csatolása ide: %(mountpoint)s Áttekintés Particionálás Teljes név:  A Live beállítások eltávolítása (csomagok) Választott időzóna: Gépnév beállítása Billentyűzet beállítása Nyelv beállítása Méret Összefoglaló Rendszerbeállítások Az EFI partíció túl kicsi. A partíciónak legalább 100 MB-nak kell lennie. Az EFI partíciót VFAT vagy FAT32 fájlrendszerre kell formázni. A kép az Ön felhasználói fiókját képviseli. A bejelentkezési képernyőnél és néhány egyéb helyen lesz a kép megjelenítve. Időzóna Időzóna:  Típus Felhasználói információ Felhasználói beállítások Felhasználónév:  Változat A kézi partíciókezelést választotta, ez azonban csak HALADÓ FELHASZNÁLÓKNAK ajánlott. Az Ön teljes neve Az Ön jelszava Az Ön fotója Az Ön felhasználói neve 