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
          ^        s     �     �     �  �  �  �  ;       #   (     L  �   l  -   �       3   1  ~  e     �  w   �    k  t   �     �  0     
   L     W     u     �  #  �  +   �  %   �  '     �   A  B   �  '      )   H     r  
   {     �     �  %   �     �     �  6     k  :  
   �  "   �     �  A   �  #   4  $   X  +   }     �  
   �     �  )   �  Z     H   b  �   �     Y     o     �  6   �  1   �  #   �        �   *      �      !     (!  ,   >!     ?                     8             $   =              )   "   6                 /                                           7      3          5      #       <   (       >                       1   %       0   9      	      4   '   &   
      2         ;       -   *   :                ,                     .   !       +    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Before continuing, please mount your target filesystem(s) at /target. Checking bootloader Cleaning APT Configuring bootloader Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-27 14:53+0100
PO-Revision-Date: 2014-06-08 15:36+0000
Last-Translator: segray <segray@tut.by>
Language-Team: Belarusian <be@li.org>
Language: be
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 Патрабуецца сістэмная EFI-партыцыя з наступнымі ўласцівасцямі:

 - Пункт мантавання: /boot/efi
 - Сцяжкі: Bootable
 - Памер: большы за 100 МБ
 - Тып: vfat ці fat32

Для гарантыі сумяшчальнасці з Windows мы раім выкарыстоўваць першую партыцыю дыска ў якасці сістэмнай EFI-партыцыі.
  Прызначыць да / Прызначыць да /boot/efi Прызначыць да /home Перад тым як працягваць прымантуйце мэтавую файлавую сістэму(ы) ў /мэта. Праверка стартавальніка Ачыстка APT Настáўленне стартавальніка Стварыце /мэта/etc/fstab, адпаведны файлавым сістэмам, што будуць прымантаваныя ў вашай новай сістэме, паводле тых, што цяпер прымантаваныя ў /мэта (без выкарыстання прэфікса /мэта ў непасрэдных шляхах мантавання). Прылада НЕ мантуйце віртуальныя прылады, такія як /dev, /proc, /sys і г.д. у /мэта/. Двойчы праверце карэктнасць вашага /мэта/etc/fstab; што ў ім запісана ўсё, што мусіць мець сістэма падчас першага запуску, і ўсё, што цяпер прымантавана ў /мэта. Падчас усталёўвання вас спытаюць пра напісанне ўласнага /etc/fstab. Змяніць партыцыю Аперацыі файлавай сістэмы Далей Свабоднае месца Назва хоста Назва хоста:  Усталюйце ўсе пакункі, якія могуць спатрэбіцца ў першым запуску (mdadm, cryptsetup, dmraid і да т.п.) праз загад "sudo chroot /target" згодна з адпаведным усталяваннем праз apt-get/aptitude. Інструмент усталявання Памылка усталявання Усталяванне скончана Усталяванне выканана. Перазапусціць кампутар, каб пачаць карыстацца новай сістэмай? Усталёўванне стартавальніка (bootloader) Раскладка клавіятуры Раскладка клавіятуры:  Мова Мова:  Раскладка Лакалізацыя Пакункі лакалізацыі Мадэль Пункт мантавання Мантаванне %(partition)s да %(mountpoint)s Заўважце, што для таго, каб update-initramfs спрацаваў карэктна ў пэўных выпадках (напр. dm-crypt), вам, мажліва, трэба будзе мець прымантаванымі дыскі з той жа назвай блочнай прылады, як яны запісаны ў /мэта/etc/fstab. Агляд Падзел на партыцыі Сапраўднае імя:  Выдаленне live-канфігурацыі (пакункі) Абраны часавы пояс: Заданне назвы хоста Настáўленне клавіятуры Заданне лакалі Памер Сцісла Сістэмныя настáўленні EFI-партыцыя занадта малая. Мае быць прынамсі 100 МБ. EFI-партыцыя мае быць фарматаванай як vfat. Гэтая выява ўвасабляе ваш конт. Выкарыстоўваецца на экране ўвахода і ў некаторых іншых месцах. Часавы пояс Часавы пояс:  Тып Інфармацыя пра карыстальніка Настáўленні карыстальніка Імя карыстальніка:  Варыянт Вы выбралі кіраваць падзелам на партыцыі ўласнаручна. Гэтая магчымасць толькі для ДАСВЕДЧАНЫХ КАРЫСТАЛЬНІКАЎ. Ваша поўнае імя Ваш пароль Вашая выява Вашае імя карыстальніка 