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
          ^        s     �     �     �  �  �  �   E     2     A     W  T   j     �     �     �  �   �     �  L   �  �     J   �       "        6     >     L     _  �   t     J     `     p  Z   �     �     �          '     -     5  
   A     L     f     l  -   |  �   �     �     �     �  -   �     �       "   .     Q     i     r     y  9   �  -   �  n   �     d     t     �     �     �     �     �  b   �     :     M     Y     h     ?                     8             $   =              )   "   6                 /                                           7      3          5      #       <   (       >                       1   %       0   9      	      4   '   &   
      2         ;       -   *   :                ,                     .   !       +    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Before continuing, please mount your target filesystem(s) at /target. Checking bootloader Cleaning APT Configuring bootloader Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-27 14:53+0100
PO-Revision-Date: 2014-06-04 08:24+0000
Last-Translator: Tomáš Moravec <otoman100@gmail.com>
Language-Team: Czech <cs@li.org>
Language: cs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 - Přípojný bod: /boot/efi
 - Příznaky oddílu: Zaveditelný
 - Velikost: Větší než 100MB
 - Formátování: vfat nebo fat32

K zajištění kompatibility s Windows doporučujeme použít první oddíl na disku jako EFI oddíl
  Přiřadit k / Připojit k /boot/efi Přiřadit k /home Před pokračováním, prosím připojte vámi vybrané souborové systémy na /cíl Kontroluji bootloader Čistím APT Konfiguruji bootloader Vytvořte /cíl/etc/fstab pro souborové systémy tak, jak mají být připojeny ve vašem novém, zahrnujíce ty aktuálně připojené v /cíl (bez použítí /cíl v jejich připojovací cestě) Zařízení Nepřipojujte virtuální zařízení jako /dev, /proc, /sys, etc na /cíl/. Zkontrolujte, jestli je /cíl/etc/fstab korektní, souhlasí to, co má systém spustit při prvním spuštění, a souhlasí to, co je teď připojeno na /cíl Během instalace budete vyzváni k zapsání vlastního souboru /etc/fstab Upravit oddíl Vytváření souborového systému Další Volné místo Název počítače Název počítače:  Nainstalujte balíčky, které mohou být nezbytné při prvním spuštění (mdadm, cryptsetup, dmraid, apod.) zavoláním "sudo chroot /cíl" následovaným odpovídajícími instalacemi pomocí apt-get/aptitude Instalační nástroj Chyba instalace Instalace dokončena Instalace je dokončena. Chcete restartovat počítač a začít používat nový systém? Instalace zavaděče Rozložení klávesnice Rozložení klávesnice:  Jazyk Jazyk:  Rozložení Lokalizace Překládání balíčků Model Přípojný bod Připojuje se %(partition)s do %(mountpoint)s Všimněte si, že aby update-initramfs pracoval správně v některých případech (například dm-crypt), budete muset mít jednotky současně připojeny pomocí stejného názvu zařízení bloku, jak jsou zobrazeny v /target/etc/fstab. Shrnutí Dělení disku Jméno a příjmení:  Odstranění konfigurace live CD (balíčků) Zvolená časová zóna Nastavuji název počítače Natavují se parametry klávesnice Nastavuje se lokalizace Velikost Souhrn Nastavení systému EFI oddíl je příliš malý. Musí mít alespoň 100 MB EFI oddíl musí být formátován jako vfat. Obrázek reprezentuje váš účet. Používá se na přihlašovací obrazovce a několika dalších místech. Časové pásmo Časové pásmo:  Typ Informace o uživateli Nastavení uživatele Uživatelské jméno:  Varianta Zvolili jste si manuální dělení disku, tento nástroj je určen jen pro POKROČILÉ UŽIVATELE Vaše celé jméno Vaše heslo Váš obrázek Vaše uživatelské jméno 