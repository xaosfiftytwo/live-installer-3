��    �      �  �   ,      �  *   �  &     J   ;  �   �          +  (  7     `  ,   f     �     �     �     �     �     �     �  @   	     J  �   f     �               .     E     Y     a  �   i     !  C   (     l  �   �  �     F   �     �     �     �       
   -     8  J   L     �     �     �     �  	   �     �  *   �     #  
   +     6     ;     H     \  
   e  {   p  c   �     P     X  %   k  �   �     >     [     m     �  Y   �  �   �  =   s     �     �     �     �     	          *     <     B     S  
   \     g     n     }     �     �     �     �     �     �  #        %     7     =     I  (   Z     �     �     �  �   �     �     �  %   �  F   �  9     U   ?  7   �     �  0   �  '        A     \    {     �      �      �      �   
   �      �   &   �      �      �      	!     !     ,!     =!     V!     e!     t!  �   y!     1"     9"     I"     V"  :   f"  ,   �"  S   �"  n   "#  9   �#  9   �#  a   $  /   g$     �$  
   �$     �$     �$     �$     �$     �$     %     %     *%  *   B%  	   m%     w%  
   �%     �%  <   �%  2   �%  �   &  
  �&  �   �'  ^   �(  U   �(  N   =)  /   �)     �)     �)     �)     �)     *  (   *     :*     K*     X*     a*     i*     w*     �*  �  �*  +   @,  (   l,  S   �,  �   �,     r-     �-  (  �-  	   �.  5   �.  
   /     /     "/     ;/     Q/     h/     o/  H   �/     �/  �   �/     �0  
   �0     �0     �0     �0     �0     �0  �   1     �1  @   �1     �1  �   2  �   �2  N   -3     |3     �3      �3     �3  
   �3     �3  Y   �3     O4     f4     j4     |4     �4     �4  +   �4     �4     �4     �4     �4     5  	   &5  
   05  e   ;5  z   �5  
   6     '6  '   >6  �   f6     7     67     K7     \7  Z   t7  �   �7  N   d8     �8     �8     �8     �8     9     '9     ?9     T9     \9     m9     t9     }9     �9     �9     �9     �9     �9     �9     �9     :  $   +:     P:     a:     h:     x:  )   �:     �:     �:     �:  �   �:  	   �;     �;  *   �;  ]   �;  Z   N<  W   �<  G   =     I=  6   g=  +   �=  !   �=  '   �=    >     .?     6?     G?     N?     V?     b?  /   v?     �?  
   �?     �?     �?     �?     �?     
@     @     0@  �   8@     �@     �@     A     A  =   +A  0   iA  H   �A  _   �A  4   CB  H   xB  j   �B  +   ,C     XC  	   `C     jC     nC     �C     �C     �C     �C     �C     �C  2   D     AD     VD     nD     ~D  M   �D  >   �D  �   E    �E    �F  c   �G  d   7H  O   �H  5   �H     "I     :I  #   II     mI     vI  1   �I     �I     �I     �I  	   �I     �I     J     J     J   f       I   p   �   `       D   K   �   �   e   v   X   �      Y   S              �                     {   �       �   �   Q                     o       �   w   %       +   d       �      _   g   �   &      0              �   �           s   "   W           �       :   V   ;   t                                 ]             *   8   E   (       1       C   u   7               }   /   �   h   �   #   j           N   )   ^       �   L       �   �   a   Z   �       �   l      \          P      R   
   �      |          �               A   y   q   �   5   F   H       �   �   �   9       '   x   M       z   T   �       3   �       ~   ,   �          U   -   �   O      .   �   >   �           $   [   	       6       �      m   c   �   �      =   ?       G   i           �   �   �       �       4      !   �   b   �      r   �   @   <       k   �      �                     n      �   �   �       �   B   �      2    <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> A chrooted terminal and fstab will be opened after you close this message. A root partition is needed to install the system.

 - Mount point: /
 - Recommended size: 30GB
 - Recommended filesystem format: ext4
 Adding new user to the system Advanced... An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Apply Are you sure you want to quit the installer? Assign to / Assign to /boot/efi Assign to /home Automatic login Automatic login:  Back Base filesystem does not exist Before continuing, please mount your target filesystem(s) at %s. Browse for more pictures... Cannot download and install additional locale packages: no internet connection
Configuration will still be set to your selected language. Checking bootloader Cleaning APT Click to change your picture Configuring bootloader Configuring sensors Copying Country Create %s/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at %s (without using the %s prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on %s/. Do not install Grub Double-check that your %s/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at %s. During the install, you will be given time to chroot into %s and install any packages that will be needed to boot your new system. During the install, you will be required to write your own /etc/fstab. Edit partition Encrypt Encrypt {} and format as {} Encrypting %(partition)s ... Encryption Encryption password Encryption will erase all data from {}

Are you sure you want to continue? Entering the system ... Error Extended partition Filesystem operations Format as Format {} as {} Formatting %(partition)s as %(format)s ... Forward Free space Grub Grub install Grub not configured Hostname Hostname:  If enabled, the login screen is skipped when the system starts, and you are signed into your desktop session automatically. If you aren't sure what any of this means, please go back and deselect manual partition management. Install Install Grub on {} Install additional localized packages Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot %s" followed by the relevant apt-get/aptitude installations. Install the operating system Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation. Installation is paused: please finish the custom installation Installation paused Installing EFI packages... Installing bootloader Installing drivers Installing {}... Keyboard layout Keyboard layout:  Label Label (optional) Language Language:  Layout Live Installer Localization Localizing AbiWord Localizing Firefox Localizing KDE Localizing LibreOffice Localizing Thunderbird Localizing packages Log in automatically on system boot Logical partition Model Mount point Mount {}{} as {} Mounting %(partition)s on %(mountpoint)s No %s file found! No internet connection Not mounted Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in %s/etc/fstab. Overview Partitioning Password for the encrypted partition: Please do the following and then click Forward to finish installation: Please enter your password twice to ensure it is correct. Please indicate a filesystem to format the root (/) partition with before proceeding. Please make sure you wish to manage partitions manually Please provide a hostname. Please provide a password for your user account. Please provide a username without -oem. Please provide a username. Please provide your full name. Please, click on the network manager's system tray icon to connect to the internet before you continue.

You can still install %s without an internet connection.
Without an internet connection your system will not be upgraded and some packages cannot be localized. Quit Quit? Real name:  Refresh Removable: Removing VirtualBox Removing live configuration (packages) Removing os-prober Select image Select timezone Selected timezone: Setting hostname Setting keyboard options Setting locale Setup finished Size Something is wrong with the installation medium! This is usually caused by burning tools which are not compatible with {}. Please burn the ISO image to DVD/USB using a different tool. Summary System settings Take a photo Take a photo... The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. The grub bootloader was not configured properly! You need to configure it manually. The hostname is incorrect:
not more than 63 characters between periods
and not more than 255 characters total. This hostname will be the computer's name on the network. This is the name you will use to log in to your computer. This picture represents your user account. It is used in the login screen and a few other places. This will be shown in the About Me application. Timezone Timezone:  Type Unable to convert the image. Unable to take a photo. Unknown Unmounting partitions Update apt cache Update the new system Use already-mounted %s. Use this box to test your keyboard layout. User info User settings Username:  Variant Verify that fstab is correct (use blkid to check the UUIDs). Writing filesystem mount information to /etc/fstab You chose to NOT install Grub on your system.
Without a bootloader like Grub your system might not boot.

Are you sure you want to continue? You chose to encrypt the root partition.

You will need to mount /boot on a separate non-encrypted partition (500 MB).
Without a non-encrypted /boot partition your system will be unbootable.

Encryption will erase all data from {}

Are you sure you want to continue? You chose to install Grub on a partition.
It is recommended to install Grub on a disk instead of a partition.

Only continue if you are certain that you have another bootloader already installed.

Are you sure you want to continue? You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. You must first manually mount your target filesystem(s) at %s to do a custom install! You need to choose a format type
for your encrypted partition (default: ext4): You need to choose a mount point for partition: Your full name Your password Your passwords do not match. Your picture Your username Your username cannot start with a digit. _Edit partitions _Expert mode disabled enabled set boot flag {} Installer {} OEM Setup Project-Id-Version: live-installer-3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-13 09:38+0200
PO-Revision-Date: 2016-04-05 12:27+0000
Last-Translator: Arjen Balfoort <schoelje@solydxk.com>
Language-Team: Swedish (http://www.transifex.com/solydxk/live-installer-3/language/sv/)
Language: sv
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 <b>Vänligen välj en rotpartition (/).</b> <b>Vänligen välj en EFI-partition.</b> En chrotad terminal och fstab kommer att öppnas sedan du stängt detta meddelande. En rotpartition behövs för att installera systemet.

- Monteringspunkt: /
- Rekommenderad storlek: 30 GB
- Rekommenderat format: ext4
 Lägger till ny användare Avancerat ... En EFI-partition behövs med följande krav:

- Monteringspunkt: /boot/efi
- Partitionsflagga: Startbar
- Storlek: Större än 100 MB
- Format: vfat eller fat32

För att säkerställa kompatibilitet med Windows rekommenderar vi att du använder diskens första partition som EFI-systempartition. Tillämpa Är du säker på att du vill avsluta installationen? Tilldela / Tilldela /boot/efi Enhetstilldelning: /home Automatisk inloggning Automatisk inloggning: Bakåt Basfilsystem finns ej. Innan du fortsätter, var vänlig och montera ditt målfilsystem vid %s. Bläddra efter fler bilder ... Kan ej hämta och installera ytterligare översatta paket: ingen internetanslutning.
Konfigurationen kommer ändå att behålla ditt valda språk. Kontrollerar starthanteraren Rensar APT Klicka för att byta bild Konfigurerar starhanteraren Konfigureringssensorer Kopierar Land Skapa %s/etc/fstab för filsystemen vartefter de monteras i ditt nya system och matcha de för närvarande monterade vid %s (utan att använda prefixet %s i monteringsvägarna). Enhet Montera EJ virtuella enheter som /dev, /proc, /sys etc. på %s/. Installera ej GRUB Dubbelkontrollera att din %s/etc/fstab är korrekt och matchar det ditt system kommer att ha vid första systemstart och det som är monterat vid %s. Under installationen kommer du att få tillfälle att chrota in i %s och installera paket som behövs för att starta ditt nya system. Under installationen kommer du att vara tvungen att skriva en egen /etc/fstab. Redigera partition Kryptera Kryptera {} och formatera som {} Krypterar %(partition)s ... Kryptering Krypteringslösenord Kryptering kommer att radera all data från {}

Är du säker på att du vill fortsätta? Går in i systemet ... Fel Utökad partition Filsystemsåtgärder Formatera som Formatera {} som {} Formaterar %(partition)s som %(format)s ... Framåt Ledigt utrymme GRUB GRUB-installation GRUB är ej konfigurerad Datornamn Datornamn: Om aktiverad kommer inloggningen att hoppas över när systemet startas och du loggas in automatiskt. Om du inte är säker på vad allt detta innebär, var vänlig och gå tillbaka och avmarkera manuell partitionshantering. Installera Installera GRUB på {} Installera ytterligare översatta paket Installera paket som kan behövas för en första systemstart (mdadm, cryptsetup, dmraid, etc) genom att ange "sudo chroot %s" följt av relevanta apt-get/aptitude-installationer. Installera operativsystemet Installationsverktyg Installationsfel Installationen är klar Installationen är nu klar. Vill du starta om datorn och börja använda det nya systemet? Installationen är nu hejdad. Var vänlig och läs noggrannt instruktionerna på sidan innan du klickar på Framåt för att avsluta installationen. Installationen är hejdad: var vänlig och slutför den anpassade installation Installation hejdad Installerar EFI-paket ... Installerar starthanterare Installerar drivrutiner Installerar {} ... Tangentbordsutläggning Tangentbordslayout:  Etikett Etikett (valfri) Språk Språk:  Utseende Direktinstallerare Landsanpassning Översätter AbiWord Översätter Firefox Översätter KDE Översätter LibreOffice Översätter Thunderbird Översätter paketen Logga in automatiskt vid systemstart Logisk partition Modell Monteringspunkt Montera {}{} som {} Monterar %(partition)s på %(mountpoint)s Ingen %s funnen! Ingen internetanslutning Ej monterad Observera att för att update-initramfs ska fungera ordentligt i vissa fall (såsom dm-crypt), kan du behöva ha redan monterade enheter att använda samma blockenhetsnamn som i %s/etc/fstab. Översikt Partitionering Lösenord för den krypterade partitionen: Var vänlig och gör följande och därefter avsluta installationen genom klicka på Framåt: Var vänlig och ange ditt lösenord två gånger för att se till så att det är korrekt. Vänligen ange ett filsystem att formatera rotpartitionen (/) med innan du fortsätter. Var vänlig och se till så att du önskar hantera partitioner manullet Vänligen ange ett datornamn. Vänligen ange ett lösenord för ditt användarkonto. Vänligen ange ett användarnamn utan -oem. Vänligen ange ett användarnamn. Vänligen ange ditt fullständiga namn. Var vänlig och klicka på nätverkshanterarens ikon i systempanelen för att ansluta till internet innan du fortsätter.

Du kan ännu installera %s utan en internetanslutning.
Utan en internetanslutning kommer ditt system ej att uppgraderas och vissa paket inte att översättas. Avsluta Vill du avsluta? Namn:  Förnya Borttagbar: Tar bort VirtualBox Avlägsnar direktkörningskonfiguration (paket) Tar bort os-prober Välj bild Välj tidszon Vald tidszon: Anger datornamn Ställer in tangentbordet Anger plats Installationen avslutades Storlek Något är fel med installationsmediet! Detta orsakas vanligtvis av brännarprogram som inte är kompatibla med {}. Var vänlig och bränn ISO-avbildningen med ett annat program. Sammanfattning Systeminställningar Ta ett foto Ta ett foto ... EFI-partitionen är för liten. Den måste rymma minst 100MB. EFI-partitionen måste vara formaterad som vfat. GRUB konfigurerades ej ordentligt! Du behöver konfigurera den manuellt. Datornamnet är ogiltigt:
ej mer än 63 tecken mellan punkter
och ej mer än 255 tecken totalt. Detta namn kommer att bli datorns namn i nätverket. Detta är namnet du kommer att använda för att logga in på din dator. Denna bild representerar ditt användarkonto. Den används vid inloggningen och på några andra ställen. Detta kommer att visas i programmet Om mig. Tidszon Tidszon:  Typ Kunde inte konvertera bilden. Kunde inte ta ett foto. Okänd Avmonterar partitioner Uppdatera apt-cache Uppdatera det nya systemet Använd färdigmonterade %s. Använd denna box för att testa ditt tangentbord. Användarinformation Användarinställningar Användarnamn:  Variant Verifiera att fstab är korrekt (använd blkid för att kontrollera UUID:na). Skriver monteringsinformation för filsystemet till /etc/fstab Du valde att inte installera GRUB i ditt system.
Utan en starthanterare som GRUB kanske ditt system inte startar.

Är du säker på att du vill fortsätta? Du valde att kryptera rotpartitionen.

Du kommer att behöva montera /boot på en separat okrypterad partition (500 MB).
Utan en okrypterad /boot-partition kommer ditt system ej att kunna starta.

Kryptering kommer att radera all data från {}

Är du säker på att du vill fortsätta? Du valde att installera GRUB på en partition.
Det rekommenderas att installera GRUB på en disk istället för på en partition.

Fortsätt endast om du är säker på att du har en annan starthanterare installerad.

Är du säker på att du vill fortsätta? Du har valt att hantera partitioner manuellt; denna funktion är endast för AVANCERADE ANVÄNDARE. Du måste först manuellt montera ditt målfilsystem på %s för att göra en anpassad installation! Du behöver välja en formattyp
för din krypterade partition (förvald: ext4): Du behöver välja en monteringspunkt för partition: Ditt fullständiga namn Ditt lösenord Dina lösenord överensstämmer ej. Din bild Ditt användarnamn Ditt användarnamn kan inte börja med en siffra. _Redigera partitioner _Expertläge inaktiverad aktiverad ange startflagga {} Installerare {} OEM-inställningar 