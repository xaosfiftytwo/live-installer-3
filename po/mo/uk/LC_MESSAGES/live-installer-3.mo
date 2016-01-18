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
          ^        s     �     �     �  �  �    [     d  #   �     �  �   �  -   b     �  3   �  o  �     I  n   Z  G  �  }     !   �  5   �     �     �          .  
  C  -   N  5   |  +   �  �   �  3   �  '   �  )   �       
        )     <  %   S     y     �  6   �  �  �     �     �     �  Q   �  )   %  .   O  B   ~  !   �     �     �  '     Q   )  R   {  �   �     �      �      �   +   �   /   �       ,!     M!  �   \!     �!     "     /"  )   M"     ?                     8             $   =              )   "   6                 /                                           7      3          5      #       <   (       >                       1   %       0   9      	      4   '   &   
      2         ;       -   *   :                ,                     .   !       +    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Before continuing, please mount your target filesystem(s) at /target. Checking bootloader Cleaning APT Configuring bootloader Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-18 08:57+0100
PO-Revision-Date: 2014-06-07 14:07+0000
Last-Translator: Stuartlittle1970@gmail.com <Stuartlittle1970@gmail.com>
Language-Team: Ukrainian <uk@li.org>
Language: uk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 Системний розділ EFI необхідно з урахуванням таких вимог:

 - Точка монтування: boot/efi
 - Тип: Завантажувальний
 - Розмір: більше ніж 100Мб
 - Файлова система: vfat або fat32

Для забезпечення сумісності з Windows, ми рекомендуємо Вам використовувати перший розділ диска в якості системного розділу EFI.
  Призначити як / Призначити як /boot/efi Призначити як /home Перш ніж продовжити, будь ласка, змонтуйте Вашу цільову(і) файлову(і) систему(и) на /target. Перевірка завантажувача Очищення APT Налаштування завантажувача Створити /target/etc/fstab для файлових систем, які будуть змонтовані в Вашій новій системі, що відповідають тим, які в даний час змонтовані на /target (без використання префікс /target у власних частинах монтування) Пристрій Не монтуйте віртуальні пристрої, такі як /dev, /proc, /sys, etc on /target/. Двічі переконайтеся, що ваш /target/etc/fsta правильний, відповідає тому, який Ваша нова система буде мати при першому завантаженні, і відповідає тому, що в даний час встановлений на /target. Під час встановлення, вам буде потрібно написати свій власний /etc/fstab. Редагувати розділ Операції з файловою системою Наступний Вільне місце Ім'я комп'ютера Ім'я хосту:  Встановіть всі пакунки, які можуть бути потрібні для першого завантаження (mdadm, cryptsetup, dmraid, інші) командою "sudo chroot /target" після встановлення apt-get/aptitude Інструмент встановлення Помилка під час встановлення Встановлення завершено Встановлення завершено. Ви хочете, перезавантажити комп'ютер, щоб використовувати нову систему? Встановлення завантажувача Розкладка клавіатури Розкладка клавіатури:  Мова Мова:  Розкладка Локалізація Пакунки локалізації Модель Точка монтування Монтування %(partition)s на %(mountpoint)s Зверніть увагу, що для того, щоб оновлені unitramfs працювали належним чином в деяких випадках (наприклад, dm-crypt), Вам може бути потрібно мати диски встановлені в даний час  за допомогою того ж блоку ім'я пристрою, як вони відображуються в /target/etc/fstab. Перегляд Розмітка Справжнє ім'я  Вилучення тимчасових налаштувань (пакунків) Вибраний часовий пояс: Налаштування назви хосту Налаштування параметрів клавіатури Налаштування мови Розмір Підсумок Налаштування системи Розділ EFI замалий. Він має бути не менше 100 Мб. Розділ EFI повинен бути відформатований як vfat. Це зображення представляє Ваш обліковий запис. Воно використовується в екрані входу та кількох інших місцях. Часовий пояс Часовий пояс:  Тип Інформація користувача Налаштування користувача Ім'я користувача:  Варіант Ви вибрали управління розділами вручну, ця функція тільки для ДОСВІДЧЕНИХ КОРИСТУВАЧІВ. Ваше повне ім'я Ваш пароль Ваше зображення Ваше ім’я користувача 