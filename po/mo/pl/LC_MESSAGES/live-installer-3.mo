��    �      �  �         �  *   �  &     J   +  �   v     �       (  '     P  ,   V     �     �     �     �     �     �     �  @   �     :     V  �   s     �               ;     R     h     |     �  �   �     D  C   K     �  �   �  �   6  F   �                     3  
   P     [  J   o     �     �     �     �     �  	          *   /     Z  
   b     m     r          �  
   �  {   �  c   #     �     �  %   �  �   �     u     �     �     �  Y   �  �   '  =   �     �     �          -     @     Q     a     s     y     �  
   �     �     �     �     �     �     �     �          $  #   8     \     n     t     �  (   �     �  �   �     �  �   �     a     j  %   w  F   �  9   �  U     7   t     �  0   �     �        -   2      `      e      k      w   
         �   &   �      �      �      �      �      !     !     2!     A!  �   F!     �!     "     "     #"  :   3"  ,   n"  S   �"  n   �"  9   ^#  9   �#  a   �#  /   4$     d$  
   m$     x$     }$     �$     �$     �$     �$     �$  *   �$  	   %     '%  
   5%     @%  <   H%  2   �%  �   �%  
  E&  �   P'  ^   8(  U   �(  N   �(  /   <)     l)     {)     �)     �)     �)  (   �)     �)     �)     *     *     *     '*  �  4*  0   ,  $   M,  L   r,  �   �,     O-     m-  8  }-     �.  #   �.     �.     �.     	/     /     4/     L/  "   S/  U   v/     �/     �/  �   0  !   �0     �0     �0  $   �0     �0     1  
   (1     31  �   81     �1  K   2     O2  �   a2  �   3  S   �3     �3     4      4     54     S4     _4  S   r4     �4     �4     �4     �4     5     %5     45  .   I5     x5     ~5     �5     �5     �5     �5     �5  N   �5  a   26     �6     �6  (   �6  �   �6     �7     �7     �7      8  q   8  �   �8  <   9     K9     a9  "   z9     �9     �9     �9     �9     �9     �9     
:     :     :     !:     1:     =:     Q:     e:     u:     �:     �:  0   �:     �:     �:     ;     ;  *   );  
   T;  �   _;     <    <  	   +=     5=  *   E=  W   p=  D   �=  \   >  ,   j>  !   �>  #   �>  $   �>  !   ?  *   $?     O?     V?     ]?  	   p?  	   z?     �?  $   �?     �?     �?     �?     @     @     4@     P@     k@  �   s@     AA     NA     cA     rA  :   �A  1   �A  ]   �A  o   LB  5   �B  '   �B  l   C  ,   �C     �C     �C     �C     �C     �C     D     D     /D     GD  6   ^D     �D     �D     �D     �D  A   �D  :   &E  �   aE  �   �E  �   �F  �   �G  o   ?H  @   �H  "   �H     I     *I     7I     KI     ZI  3   sI     �I     �I     �I  
   �I     �I     �I     M   i       L   r   �   b       G   N   �   �   h   x   [   �      \   V          c   �                     }   �       �   �   T                     ,       �   y   '       .   g       �          j   �   (      3              �   o           u   $   Z   "       �       =   Y   >   v          !                       `             -   ;   H   *       4       F   w   :                  2   �   k   �   %   m       �   Q   +   a       q   O       �   �   d   ]   �       �       �   _          S      U   
   �      ~                          D   {   s   �   8   I   K       �   �   �   <       )   z   P       |   W   �       6   �   �   �   /   �          X   0   �   R      1   �   A   �           &   ^   	       9       �         f   �   �      @   B       J   l           �   �   �       �       7      #   �   e   �      t   �   C   ?       n          �                     p      �   �   �       �   E          5    <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> A chrooted terminal and fstab will be opened after you close this message. A root partition is needed to install the system.

 - Mount point: /
 - Recommended size: 30GB
 - Recommended filesystem format: ext4
 Adding new user to the system Advanced... An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Apply Are you sure you want to quit the installer? Assign to / Assign to /boot/efi Assign to /home Automatic login Automatic login:  Back Base filesystem does not exist Before continuing, please mount your target filesystem(s) at %s. Browse for more pictures... Calculating file indexes ... Cannot download and install additional locale packages: no internet connection
Configuration will still be set to your selected language. Checking bootloader Cleaning APT Click to change your picture Configuring bootloader Configuring initramfs Configuring sensors Copying Country Create %s/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at %s (without using the %s prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on %s/. Do not install Grub Double-check that your %s/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at %s. During the install, you will be given time to chroot into %s and install any packages that will be needed to boot your new system. During the install, you will be required to write your own /etc/fstab. Edit partition Encrypt Encrypt {} and format as {} Encrypting %(partition)s ... Encryption Encryption password Encryption will erase all data from {}

Are you sure you want to continue? Encryption/password Entering the system ... Error Extended partition Filesystem operations Format as Format {} as {} Formatting %(partition)s as %(format)s ... Forward Free space Grub Grub install Grub not configured Hostname Hostname:  If enabled, the login screen is skipped when the system starts, and you are signed into your desktop session automatically. If you aren't sure what any of this means, please go back and deselect manual partition management. Install Install Grub on {} Install additional localized packages Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot %s" followed by the relevant apt-get/aptitude installations. Install the operating system Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation. Installation is paused: please finish the custom installation Installation paused Installing EFI packages... Installing bootloader Installing drivers Installing {}... Keyboard layout Keyboard layout:  Label Label (optional) Language Language:  Layout Live Installer Localization Localizing AbiWord Localizing Firefox Localizing KDE Localizing LibreOffice Localizing Thunderbird Localizing packages Log in automatically on system boot Logical partition Model Mount point Mount {}{} as {} Mounting %(partition)s on %(mountpoint)s No internet connection No partition table was found on the hard drive: {disk_description}. Do you want the installer to create a set of partitions for you? Note: This will ERASE ALL DATA present on this disk. Not mounted Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in %s/etc/fstab. Overview Partitioning Password for the encrypted partition: Please do the following and then click Forward to finish installation: Please enter your password twice to ensure it is correct. Please indicate a filesystem to format the root (/) partition with before proceeding. Please make sure you wish to manage partitions manually Please provide a hostname. Please provide a password for your user account. Please provide a username. Please provide your full name. Provide an encryption password for partition: Quit Quit? Real name:  Refresh Removable: Removing VirtualBox Removing live configuration (packages) Removing os-prober Select image Select timezone Selected timezone: Setting hostname Setting keyboard options Setting locale Size Something is wrong with the installation medium! This is usually caused by burning tools which are not compatible with {}. Please burn the ISO image to DVD/USB using a different tool. Summary System settings Take a photo Take a photo... The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. The grub bootloader was not configured properly! You need to configure it manually. The hostname is incorrect:
not more than 63 characters between periods
and not more than 255 characters total. This hostname will be the computer's name on the network. This is the name you will use to log in to your computer. This picture represents your user account. It is used in the login screen and a few other places. This will be shown in the About Me application. Timezone Timezone:  Type Unable to take a photo. Unknown Unmounting partitions Update apt cache Update the new system Use already-mounted %s. Use this box to test your keyboard layout. User info User settings Username:  Variant Verify that fstab is correct (use blkid to check the UUIDs). Writing filesystem mount information to /etc/fstab You chose to NOT install Grub on your system.
Without a bootloader like Grub your system might not boot.

Are you sure you want to continue? You chose to encrypt the root partition.

You will need to mount /boot on a separate non-encrypted partition (500 MB).
Without a non-encrypted /boot partition your system will be unbootable.

Encryption will erase all data from {}

Are you sure you want to continue? You chose to install Grub on a partition.
It is recommended to install Grub on a disk instead of a partition.

Only continue if you are certain that you have another bootloader already installed.

Are you sure you want to continue? You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. You must first manually mount your target filesystem(s) at %s to do a custom install! You need to choose a format type
for your encrypted partition (default: ext4): You need to choose a mount point for partition: Your full name Your password Your passwords do not match. Your picture Your username Your username cannot start with a digit. _Edit partitions _Expert mode disabled enabled set boot flag {} Installer Project-Id-Version: live-installer-3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-03-22 16:35+0100
PO-Revision-Date: 2016-03-22 15:19+0000
Last-Translator: Arjen Balfoort <schoelje@solydxk.com>
Language-Team: Polish (http://www.transifex.com/solydxk/live-installer-3/language/pl/)
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 <b>Proszę wybrać partycję systemową (/).</b> <b>Proszę wybrać partycję EFI</b> Chrootowany terminal i fstab zostaną otwarte po zamknięciu tej wiadomoći. Partycja główna (root) jest niezbędna do instalacji systemu.
- Punkt montowania: /
- Zalecany rozmiar: 30GB
- Zalecany system plików: ext4
 Dodawanie nowego użytkownika Zaawansowany... Partycja systemowa EFI potrzebna jest z następującymi wymaganiami:

 - Punkt montowania: /boot/efi
 - Flagi partycji: Rozruchowa
 - Rozmiar: Większy niż 100MB
 - Format: vfat lub fat32

Aby zapewnić kompatybilność z Windowsem polecamy Tobie użycie pierwszej partycji dysku jako systemowej partycji EFI.
  Zastosuj Czy chcesz zakończyć instalację? Przypisany do / Przypisz do /boot/efi Przypisany do /home Logowanie automatyczne Logowanie automatyczne: Wstecz Nie istnieje bazowy system plików Zanim będziemy kontynuować, proszę zamontować swój docelowy system plików w %s. Przeglądaj obrazy... Obliczanie indeksów plików... Pobranie i instalacja dodatkowych pakietów lokalizacyjnych są niemożliwe. Brak sieci.
Wybrany język pozostaje w ustawieniach.  Sprawdzanie programu rozruchowego Czyszczenie APT Kliknij aby zmienić obrazek Konfigurowanie programu rozruchowego Konfiguracja initramfs Konfiguracja czujników Kopiowanie Kraj Utwórz %s/etc/fstab dla systemu plików, jak będą one montowane w Twoim nowym systemie, dopasowując te obecnie zamontowane w %s (bez użycia prefiksu %s w samych ścieżkach montowania). Urządzenie NIE montuj wirtualnych urządzeń, takich jak /dev, /proc, /sys itd. w %s/. Nie instaluj grub Sprawdź dokładnie, że Twój %s/etc/fstab jest poprawny; dopasowuje to, co Twój nowy system będzie miał przy pierwszym rozruchu, oraz co jest obecnie zamontowane w %s. W czasie instalacji będziesz miał czas aby przejść do środowiska chroot na %s i zainstalować pliki niezbędne do startu nowego nowego systemu.  Podczas instalacji będzie konieczne dokonanie zapisu Twojego własnego /etc/fstab. Edycja partycji Szyfrowanie Zaszyfruj {} i sformatuj jako {} Szyfrowanie %(partition)s ... Szyfrowanie Hasło szyfrowania Szyfrowanie usunie wszystkie dane z {}
Czy jesteś pewien, że chcesz kontynuować? Szyfrowanie/Hasło Wejście do systemu... Błąd Partycja rozszerzona Operacje systemu plików Sformatuj jako Sformatuj {} jako {} Formatowanie %(partition)s jako %(format)s ... Dalej Wolna przestrzeń Grub Instalacja grub Grub jest nieskonfigurowany Nazwa komputera Nazwa komputera:  Jeśli wybrane, pominięty jest ekran logowania i logowanie jest automatyczne. Jeśli nie jesteś pewien co należy zrobić, kliknij "wstecz" i odznacz "partycjonowanie ręczne Instaluj Zainstaluj grub na {} Instaluj dodatkowe pakiety lokalizacyjne Zainstaluj dowolne pakiety, które mogą być potrzebne dla pierwszego rozruchu (mdadm, cryptsetup, dmraid, itd.) przez wywołanie "sudo chroot %s" a następnie dokonanie odpowiedniej instalacji poprzez apt-get/aptitude. Instaluj system operacyjny Narzędzie instalacyjne Błąd instalacyjny Instalacja zakończona Instalacja jest już ukończona. Czy chcesz uruchomić ponownie swój komputer, aby móc używać nowego systemu? Przerwa w instalacji. Proszę uważnie przeczytać instrukcje na stronie a następnie kliknąć "Dalej" aby dokończyć instalację. Instalacja zatrzymana - zakończ instalację niestandardową Instalacja zatrzymana Instalacja pakietów EFI Instalowanie programu rozruchowego Instalacja sterowników Instalacj {}... Układ klawiatury Układ klawiatury:  Etykieta Etykieta(opcjonalnie) Język Język:  Układ Instalator live Lokalizacja Lokalizacja AbiWord Lokalizacja Firefox Lokalizacja KDE Lokalizacja LibreOffice Lokalizacja Thunderbird Pakiety lokalizacyjne Logowanie automatyczne przy uruchamianiu systemu Partycja logiczna Model Punkt montowania Montuj {}{} jako {} Montowanie %(partition)s na %(mountpoint)s Brak sieci Nie znaleziono tablicy partycji na tym dysku: {disk_description}. Czy chcesz aby instalator utworzył zestaw partycji? Uwaga: Ta operacja USUNIE WSZYSTKIE DANE obecne na dysku. Niezamontowany Należy pamiętać, że aby update-initramfs działał prawidłowo w niektórych przypadkach (np. dm-crypt), może wystąpić potrzeba posiadania dysków obecnie zamontowanych przy użyciu tej samej nazwy urządzenia blokowego, jak pojawiają się one w %s/etc/fstab. Przegląd Partycjonowanie Hasło dostępu do partycji zaszyfrowanej: Proszę wykonać zalecenia i następnie kliknąć "Dalej", aby zakończyć instalację: Wprowadź hasło dwukrotnie aby upewnić się, że jest bez błędu. Przed kontynuacją proszę wskazać system plików do sformatowania partycji systemowej (/). Czy na pewno chcesz partycjonować ręcznie? Proszę wpisać nazwę komputera. Proszę wpisać hasło uzytkownika. Proszę wpisać nazwę użytkownika. Proszę wpisać imię i nazwisko. Wprowadź hasło szyfrowania dla partycji: Wyjdź Wyjdź Imię i nazwisko:  Odśwież Wymienny: Usuwanie VirtualBox Usuwanie konfiguracji live (pakiety) Usuwanie pakietu os-prober Wybierz obrazek Wybierz strefę czasową Wybrana strefa czasowa: Ustawianie nazwy komputera Ustawianie opcji klawiatury Ustawianie opcji lokalnych Rozmiar Niewłaściwe medium instalacyjne! Zazwyczaj jest to spowodowane niezgodnością narzędzia do nagrywania obrazu z {}. Proszę użyć innego oprogramowania do nagrywania obrazu ISO na płytę DVD/dysk USB. Podsumowanie Ustawienia systemowe Zrób zdjęcie Zrób zdjęcie Partycja EFI jest za mała. Musi mieć przynajmniej 100MB. Partycja EFI musi zostać sformatowana jako vfat. Program rozruchowy grub nie jest właściwie skonfigurowany. Konieczna konfiguracja manualna. Nazwa komputera jest niepoprawna:
maksymalnie 63 znaki między kropkami,
nie więcej niż 255 znaków ogółem. Nazwa komputera będzie jego identyfikatorem w sieci. Nazwa, której użyjesz przy logowaniu. Ten obraz reprezentuje Twoje konto użytkownika. Jest używane w oknie logowania i w kilku innych miejscach. Informacja ukaże się w aplikacji "O mnie". Strefa czasowa Strefa czasowa:  Rodzaj Nie można zrobić zdjęcia. Nieznany Odmontowanie partycji Uaktualnij pamięć apt Zaktualizuj nowy system Użyj zamontowanej %s. Użyj tego okienka aby przetestować układ klawiatury Informacja o użytkowniku Ustawienia użytkownika Nazwa użytkownika:  Wariant Sprawdź poprawność fstab (użyj blkid aby zweryfikować UUID). Zapisywanie informacji o punktach montowania do /etc/fstab Wybrałeś NIE instaluj grub w systemie
Bez bootloadera typu grub system może się nie uruchomić.
Czy jesteś pewien, że chcesz kontynuować? Wybrano zaszyfrowanie partycji root
Będzie nieodzowne zamontowanie /boot na oddzielnej, nieszyfrowanej partycji (500MB)
Bez nieszyfrowanej partycji /boot system nie uruchomi się
Szyfrowanie usunie wszystkie dane z {}
Czy chcesz kontynuować? Wybrałeś instalację grub na partycji
Zaleca się, aby instalować grub na dysku a nia na partycji.
Kontynuuj jedynie wtedy, gdy masz już zainstalowany inny bootloader.
Czy na pewno chcesz kontynuować?  Wybrałeś ręczne zarządzanie partycjami, proszę pamiętać, że funkcja ta przeznaczona jest TYLKO DLA ZAAWANSOWANYCH UŻYTKOWNIKÓW. Musisz wpierw ręcznie zamontować swój docelowy system plików w %s, aby przeprowadzić własną instalację! Wybierz typ plików dla partycji szyfrowanej (domyślnie - ext4) Wybierz punkt montowania partycji: Twoje imię i nazwisko Twoje hasło Hasła są różne. Twoje zdjęcie Twoja nazwa użytkownika Nazwa użytkownika nie może zaczynać się cyfrą. _Edytuj partycje _Tryb eksperta wyłączony włączony ustaw flagę bootowania {} Instalator 