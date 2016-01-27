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
          ^        s     �     �     �  �  �  �   :               4  S   F     �     �     �  �   �  
   �  L   �  �   �  G   �     �  "        3     @     O     b  �   w     L     c     v  \   �     �               7     =     E     Q  +   ^     �     �  +   �  �   �     �     �     �  ,   �             #   @  "   d  	   �     �     �  >   �  8   �  �   )     �     �     �     �     �             k   (     �     �     �     �     ?                     8             $   =              )   "   6                 /                                           7      3          5      #       <   (       >                       1   %       0   9      	      4   '   &   
      2         ;       -   *   :                ,                     .   !       +    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Before continuing, please mount your target filesystem(s) at /target. Checking bootloader Cleaning APT Configuring bootloader Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-27 14:53+0100
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
  Priradiť k / Priradiť k /boot/efi Priradiť k /home Pred pokračovaním prosím pripojte ku /target váš cieľový súborový systém. Kontroluje sa zavádzač Čistí sa APT Nastavuje sa zavádzač Vytvorte pre súborové systémy /target/etc/fstab, pretože budú pripojené k vášmu novému systému tak, ako sú aktuálne pripojené ku /target (bez pridania predpony /target ku prípojným cestám) Zariadenie Nepripájajte ku /target/ virtuálne zariadenia ako /dev, /proc, /sys a pod. Uistite sa, že je vaše /target/etc/fstab správne, zodpovedajúce tomu, čo bude mať váš nový systém pri prvom spustení a tomu, čo je aktuálne pripojené ku /target. Počas inštalácie budete požiadaný o zadanie vlastného /etc/fstab. Upraviť diskový oddiel Operácie so súborovým systémom Pokračovať Voľné miesto Názov počítača Názov počítača:  Nainštalujte všetky balíčky, ktoré by mohli byť potrebné pre prvé spustenie (mdadm, cryptsetup, dmraid a pod.) použitím "sudo chroot /target" nasledovaným relevantnými inštaláciami apt-get/aptitude. Inštalačný nástroj Chyba inštalácie Inštalácia dokončená Inštalácia je dokončená. Chcete váš počítač reštartovať a použiť nový systém? Inštaluje sa zavádzač Rozloženie klávesnice Rozloženie klávesnice:  Jazyk Jazyk:  Rozloženie Lokalizácia Nastavujú sa národné nastavenia balíkov Model Bod pripojenia Pripája sa %(partition)s na %(mountpoint)s Uvedomte si, že k správnemu fungovaniu update-initramfs bude v niektorých prípadoch (ako dm-crypt)  potrebné, aby mali aktuálne pripojené zariadenia rovnaké blokové názvy, aké majú v /target/etc/fstab. Prehľad Rozdelenie diskových oddielov Skutočné meno:  Odstraňujú sa live konfigurácie (balíky) Zvolená časová zóna Nastavuje sa názov počítača Nastavujú sa možnosti klávesnice Nastavujú sa národné nastavenia Veľkosť Zhrnutie Systémové nastavenia Diskový oddiel EFI je príliš malý. Musí mať aspon 100MB. Diskový oddiel EFI musí byť naformátovaný ako vfat. Tento obrázok reprezentuje váš používateľský účet. Je použitý na prihlasovacej obrazovke a niekoľkých iných miestach. Časové pásmo Časové pásmo:  Typ Info o používateľovi Používateľské nastavenia Použivateľské meno:  Variant Zvolili ste si ručnú úpravu diskových oddielov, táto funkcia je iba pre POKROČILÝCH POUŽÍVATEĽOV. Vaše meno a priezvisko Vaše heslo Váš obrázok Vaše používateľské meno 