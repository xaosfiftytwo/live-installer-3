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
  �   >          "     8     J     c     r  
   �  G   �     �  "   �          &     5     H     ]     t     �  \   �     �          .     H     N     V     b  +   o     �     �  +   �     �     �       ,        C     [  #   {  "   �  	   �     �     �  >   �  8   +  �   d     �     �     
          &     C     [  k   c     �     �     �              0                         $   5   ,   #   *      1                +                          9                 2         (       
      %      3          4   !                        /       8   )   6       &   .   7   "                                         	   '          -    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Checking bootloader Cleaning APT Configuring bootloader Device During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-13 09:38+0200
PO-Revision-Date: 2014-07-29 18:58+0000
Last-Translator: tibbi <tibbbi2@gmail.com>
Language-Team: Slovak <sk@li.org>
Language: sk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 Je potrebný systémový diskový oddiel EFI s nasledovnými požiadavkami:

 - Bod pripojenia: /boot/efi
 - Príznaky diskového oddiela: Bootable
 - Veľkosť: Viac ako 100MB
 - Formátovanie: vfat alebo fat32
  Priradiť k / Priradiť k /boot/efi Priradiť k /home Kontroluje sa zavádzač Čistí sa APT Nastavuje sa zavádzač Zariadenie Počas inštalácie budete požiadaný o zadanie vlastného /etc/fstab. Upraviť diskový oddiel Operácie so súborovým systémom Pokračovať Voľné miesto Názov počítača Názov počítača:  Inštalačný nástroj Chyba inštalácie Inštalácia dokončená Inštalácia je dokončená. Chcete váš počítač reštartovať a použiť nový systém? Inštaluje sa zavádzač Rozloženie klávesnice Rozloženie klávesnice:  Jazyk Jazyk:  Rozloženie Lokalizácia Nastavujú sa národné nastavenia balíkov Model Bod pripojenia Pripája sa %(partition)s na %(mountpoint)s Prehľad Rozdelenie diskových oddielov Skutočné meno:  Odstraňujú sa live konfigurácie (balíky) Zvolená časová zóna Nastavuje sa názov počítača Nastavujú sa možnosti klávesnice Nastavujú sa národné nastavenia Veľkosť Zhrnutie Systémové nastavenia Diskový oddiel EFI je príliš malý. Musí mať aspon 100MB. Diskový oddiel EFI musí byť naformátovaný ako vfat. Tento obrázok reprezentuje váš používateľský účet. Je použitý na prihlasovacej obrazovke a niekoľkých iných miestach. Časové pásmo Časové pásmo:  Typ Info o používateľovi Používateľské nastavenia Použivateľské meno:  Variant Zvolili ste si ručnú úpravu diskových oddielov, táto funkcia je iba pre POKROČILÝCH POUŽÍVATEĽOV. Vaše meno a priezvisko Vaše heslo Váš obrázok Vaše používateľské meno 