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
          ^        s     �     �     �  �  �    5     <  %   R     x  �   �  Q   "     t  [   �  0  �       s   4    �  z   �  ,   ?  1   l     �  )   �     �     �  ?    0   K  (   |  )   �  �   �  Y     '   �  )        +  
   4     ?     P  (   g  
   �  "   �  7   �  +  �     "  &   1     X  J   r  %   �  7   �  4     &   P     w     �  $   �  O   �  4     �   A          "     :  .   A  .   p  #   �     �  �   �     ~      �      �   *   �      ?                     8             $   =              )   "   6                 /                                           7      3          5      #       <   (       >                       1   %       0   9      	      4   '   &   
      2         ;       -   *   :                ,                     .   !       +    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Before continuing, please mount your target filesystem(s) at /target. Checking bootloader Cleaning APT Configuring bootloader Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-27 14:53+0100
PO-Revision-Date: 2014-06-06 19:01+0000
Last-Translator: spacy01 <Unknown>
Language-Team: Bulgarian <bg@li.org>
Language: bg
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 EFI файловата система има следните изисквания:

 - Точка на монтиране: /boot/efi
 - Флаг на дела: Стартиращ
 - Размер: По-голям от 100МБ
 - Формат: vfat или fat32
  Назначи за / Присвояване на /boot/efi Назначи за /home Преди да продължите, моля монтирайте Вашата целева файлова(и) система(и) в /цел. Проверка на програмата за начално зареждане Почистване на APT Конфигуриране на програмата за начално зареждане Създайте /цел/etc/fstab за файловите системи, както те ще бъдат монтирани, съответстващи на текущо монтираните в /цел (без да ползвате приставката /цел в пътя за монтиране). Устройство НЕ монтирайте виртуални устройства като /dev, /proc, /sys и т.н. в /цел/. Проверете пак дали вашия /цел/etc/fstab е правилен, съвпада с каквото вашата нова система ще има нужда за първо стартиране и съвпада с текущо монтираното в /цел. По време на инсталацията, ще трябва да напишете ваш собствен /etc/fstab. Редактиране на дяловете Операции с файлови системи Продължи Свободно пространство Системно име Системно име:  Инсталирането на някои пакети може да бъде необходимо за първото стартиране (mdadm, cryptsetup, dmraid и др.) чрез извикване на sudo chroot /цел" последвано от съответната apt-get/aptitude инсталация. Инструмент за инсталиране Грешка при инсталация Инсталирането завърши Инсталацията е завършена. Искате ли да рестартирате компютъра, за да използвате новата система? Инсталиране на програмата за начално стартиране Клавиатурна подредба Клавиатурна подредба:  Език Език:  Подредба Локализация Локализация на пакети Модел Точка на монтиране Монтиране на %(partition)s в %(mountpoint)s Имайте предвид, че за да работи правилно update-initramfs, в някои случаи (като dm-crypt) може да имате нужда от дискове, монтирани и използващи същото име, като това в /цел/etc/fstab. Преглед Определяне ня дялове Истинско име:  Премахване на Live конфигурацията (пакети) Избрана часова зона: Настройване на системното име Настройване на клавиатурата Настройване на локал Размер Обобщение Системни настройки: EFI дела е твърде малък. Трябва да е поне 100МБ. EFI дела трябва да е формат vfat. Тази снимка представя Вашият потребителски акаунт. Тя ще се показва в екрана за влизане и на още няколко места. Часова зона Часови пояс:  Тип Информация за потребител Потребителски настройки: Потребителско име:  Вариант Вие избрахте да управлявате дяловете си ръчно, тази функция е САМО ЗА НАПРЕДНАЛИ ПОТРЕБИТЕЛИ. Вашето пълно име Паролата Ви Ваша снимка Потребителското Ви име 