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
    9     @  %   V     |  Q   �     �  [        b  z   w  ,   �  1        Q  )   b     �     �  0   �  (   �  )     �   B  Y   �  '   L  )   t     �  
   �     �     �  (   �  
     "     7   1     i  &   x     �  J   �  %     7   *  4   b  &   �     �     �  $   �  O     4   S  �   �     S     i     �  .   �  .   �  #   �     
  �        �     �     �  *            0                         $   5   ,   #   *      1                +                          9                 2         (       
      %      3          4   !                        /       8   )   6       &   .   7   "                                         	   '          -    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Checking bootloader Cleaning APT Configuring bootloader Device During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-13 09:38+0200
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
  Назначи за / Присвояване на /boot/efi Назначи за /home Проверка на програмата за начално зареждане Почистване на APT Конфигуриране на програмата за начално зареждане Устройство По време на инсталацията, ще трябва да напишете ваш собствен /etc/fstab. Редактиране на дяловете Операции с файлови системи Продължи Свободно пространство Системно име Системно име:  Инструмент за инсталиране Грешка при инсталация Инсталирането завърши Инсталацията е завършена. Искате ли да рестартирате компютъра, за да използвате новата система? Инсталиране на програмата за начално стартиране Клавиатурна подредба Клавиатурна подредба:  Език Език:  Подредба Локализация Локализация на пакети Модел Точка на монтиране Монтиране на %(partition)s в %(mountpoint)s Преглед Определяне ня дялове Истинско име:  Премахване на Live конфигурацията (пакети) Избрана часова зона: Настройване на системното име Настройване на клавиатурата Настройване на локал Размер Обобщение Системни настройки: EFI дела е твърде малък. Трябва да е поне 100МБ. EFI дела трябва да е формат vfat. Тази снимка представя Вашият потребителски акаунт. Тя ще се показва в екрана за влизане и на още няколко места. Часова зона Часови пояс:  Тип Информация за потребител Потребителски настройки: Потребителско име:  Вариант Вие избрахте да управлявате дяловете си ръчно, тази функция е САМО ЗА НАПРЕДНАЛИ ПОТРЕБИТЕЛИ. Вашето пълно име Паролата Ви Ваша снимка Потребителското Ви име 