��    �      �  �   ,      �  *   �  &     J   ;  �   �          +  (  7     `  ,   f     �     �     �     �     �     �     �  @   	     J  �   f     �               .     E     Y     a  �   i     !  C   (     l  �   �  �     F   �     �     �     �       
   -     8  J   L     �     �     �     �  	   �     �  *   �     #  
   +     6     ;     H     \  
   e  {   p  c   �     P     X  %   k  �   �     >     [     m     �  Y   �  �   �  =   s     �     �     �     �     	          *     <     B     S  
   \     g     n     }     �     �     �     �     �     �  #        %     7     =     I  (   Z     �     �     �  �   �     �     �  %   �  F   �  9     U   ?  7   �     �  0   �  '        A     \    {     �      �      �      �   
   �      �   &   �      �      �      	!     !     ,!     =!     V!     e!     t!  �   y!     1"     9"     I"     V"  :   f"  ,   �"  S   �"  n   "#  9   �#  9   �#  a   $  /   g$     �$  
   �$     �$     �$     �$     �$     �$     %     %     *%  *   B%  	   m%     w%  
   �%     �%  <   �%  2   �%  �   &  
  �&  �   �'  ^   �(  U   �(  N   =)  /   �)     �)     �)     �)     �)     *  (   *     :*     K*     X*     a*     i*     w*     �*  �  �*  #   >,  #   b,  E   �,  �   �,  &   a-     �-  @  �-  	   �.  ;   �.     /     ,/     D/     X/     n/     �/  "   �/  J   �/      �/  �   0     �0     �0     �0     1     +1     @1     N1  �   S1     52  B   >2     �2  �   �2  �   C3  C   �3     '4  
   94  "   D4  "   g4     �4     �4  U   �4  $   5     (5     -5     B5     b5     r5  9   �5     �5     �5     �5     �5     �5     6     6  �   "6  �   �6     .7     :7  +   P7  �   |7      A8     b8     w8     �8  j   �8  �   9  N   �9  !   �9     :     +:     D:     X:     n:     �:     �:     �:     �:     �:     �:     �:     �:     �:     ;     $;  "   ?;  "   b;     �;  +   �;     �;     �;  
   �;     �;  :    <     ;<     U<     l<  �   {<  	   n=     x=  ,   �=  S   �=  =   >  d   E>  ?   �>     �>  7   
?  .   B?  !   q?      �?  G  �?  	   �@  
   A     A  	   A     (A     7A  1   NA     �A     �A     �A     �A     �A     �A     B     B     (B  �   0B     �B     �B     	C     C  @   (C  3   iC  R   �C  _   �C  >   PD  E   �D  v   �D  2   LE     E  
   �E     �E  ,   �E  #   �E     �E     �E     F     F     6F  :   VF     �F     �F     �F     �F  L   �F  K   #G  �   oG  �   H  �   �H  s   �I  p   jJ  V   �J  2   2K     eK     wK  "   �K     �K     �K  2   �K     �K     L     L     $L     1L     ?L     WL     J   f       I   p   �   `       D   K   �   �   e   v   X   �      Y   S              �                     {   �       �   �   Q                     o       �   w   %       +   d       �      _   g   �   &      0              �   �           s   "   W           �       :   V   ;   t                                 ]             *   8   E   (       1       C   u   7               }   /   �   h   �   #   j           N   )   ^       �   L       �   �   a   Z   �       �   l      \          P      R   
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
POT-Creation-Date: 2016-04-05 14:13+0200
PO-Revision-Date: 2016-04-05 09:29+0000
Last-Translator: Arjen Balfoort <schoelje@solydxk.com>
Language-Team: Dutch (http://www.transifex.com/solydxk/live-installer-3/language/nl/)
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 <b>Kies a.u.b. een rootpartitie</b> <b>Kies a.u.b. een EFI-partitie</b> Een terminal en fstab worden geopend nadat dit scherm wordt gesloten. Er is een rootpartitie nodig om het systeem te installeren.

 - Koppelpunt: /
 - Aangeraden grootte: meer dan 30GB
 - Aangeraden formattering: ext4
 Gebruiker wordt toegevoegd aan systeem Gevorderd... Er is een EFI-partitie benodigd met de volgende kenmerken:

 - Koppelpunt: /boot/efi
 - Partitievlaggen: opstartbaar
 - Omvang: groter dan 100 MB
 - Formattering: vfat of fat32

Om verenigbaarheid met Windows zeker te stellen raden wij u aan om de eerste partitie van de schijf als de EFI-systeempartitie te gebruiken.
  Toepassen Weet u zeker dat u het installatieprogramma wilt afsluiten? Toewijzen aan / Toewijzen aan /boot/efi Toewijzen aan /home Automatisch aanmelden Automatisch aanmelden:  Terug Basis bestandssysteem bestaat niet Voordat u doorgaat: koppel uw doel-bestandssyste(e)m(en) a.u.b. aan op %s. Browse voor meer afbeeldingen... De pakketten om uw systeem te regionaliseren kunnen niet gedownload worden: er is geen internetverbinding
De configuratie zal wel worden ingesteld op de door u geselecteerde taal. Opstartlader controleren APT schoonmaken Klik om uw foto te wijzigen Opstartlader instellen Sensors configureren Kopiëren van Land Maak %s/etc/fstab aan voor de bestandssystemen zoals ze in uw systeem zullen worden aangekoppeld, overeenkomende met die welke thans zijn aangekoppeld op %s (zonder het voorvoegsel %s te gebruiken in de koppelingspaden zelf). Apparaat Koppel GEEN virtuele apparaten als /dev, /proc en /sys aan op %s/. Installeer geen Grub Vergewis u er nogmaals van dat uw %s/etc/fstab correct is, overeenkomt met wat uw systeem zal hebben bij eerste opstart, en overeenkomt met wat thans is aangekoppeld op %s. Tijdens de installatie krijgt u de gelegenheid om met chroot %s te benaderen om de benodigde pakketten te installeren voor het opstarten van uw nieuwe systeem. Tijdens de installatie zult u uw eigen /etc/fstab moeten schrijven. Partitie bewerken Versleutel Versleutel {} en formatteer als {} Versleutelen van %(partition)s ... Versleuteling Versleutelwachtwoord Versleuteling zal alle gegevens verwijderen van {}

Weet u zeker dat u wilt doorgaan? Nieuwe systeem aan het binnengaan... Fout Uitgebreide partitie Bewerkingen van bestandssysteem Formatteren als Formatteer {} als {} Bezig met formatteren van %(partition)s als %(format)s... Volgende Vrije ruimte Grub Grub installatie Grub niet geconfigureerd Computernaam Computernaam:  Indien ingeschakeld, wordt het inlogscherm overgeslagen als het systeem start, en wordt u automatisch aangemeld bij de desktop-sessie. Als u niet precies weet wat dit allemaal betekent: ga dan alstublieft terug en maak uw keuze voor handmatig partitiebeheer ongedaan. Installeren Installeer Grub op {} Installeer extra geregionaliseerde software Installeer die pakketten die benodigd kunnen zijn voor eerste opstart (mdadm, cryptsetup, dmraid, etc) door "sudo chroot %s" aan te roepen, gevolgd door de relevante apt-get/aptitude-installaties. Installeer het besturingssysteem Installatieprogramma Installatiefout Installatie voltooid De installatie is nu voltooid. Wilt u uw computer herstarten om het nieuwe besturingssysteem te gebruiken? De installatie is thans tijdelijk onderbroken. Lees a.u.b. zorgvuldig de instructies op de pagina en klik op Volgende om de installatie te voltooien. Installatie is tijdelijk onderbroken: voltooi a.u.b. de aangepaste installatie Installatie tijdelijk onderbroken EFI pakketten installeren... Opstartlader installeren Drivers installeren Installeren van {}... Toetsenbordindeling Toetsenbordindeling:  Label Label (optioneel) Taal Taal:  Indeling Installatieprogramma Lokalisatie AbiWord wordt geregionaliseerd Firefox wordt geregionaliseerd KDE wordt geregionaliseerd LibreOffice wordt geregionaliseerd Thunderbird wordt geregionaliseerd Pakketten regionaliseren Automatisch aanmelden tijdens het opstarten Logische partitie Model Koppelpunt Koppel {}{} als {} Bezig met aankoppelen van %(partition)s aan %(mountpoint)s Geen %s bestand gevonden! Geen internetconnectie Niet gekoppeld Let op dat voor een juiste werking van update-initramfs, het in sommige gevallen (zoals dm-crypt) nodig kan zijn om thans stations aangekoppeld te hebben, met gebruikmaking van dezelfde blokapparaatnamen zoals die verschijnen in %s/etc/fstab. Overzicht Partitioneren Uw wachtwoord voor de versleutelde partitie: Doe a.u.b. het onderstaande en klik dan op Volgende om de installatie te voltooien: Voer uw wachtwoord a.u.b. twee maal in om fouten te voorkomen Geef a.u.b. voordat u doorgaat, een bestandssysteem aan voor het formatteren van de rootpartitie (/) Wees er zeker van dat u de partities handmatig wenst te beheren Voer a.u.b. een computernaam in Voer a.u.b. een wachtwoord in voor uw gebruikersaccount Voer a.u.b. een gebruikersnaam zonder -oem in. Voer a.u.b. een gebruikersnaam in Voer a.u.b. uw volledige naam in Voordat u verder gaat, klikt u a.u.b. op het icoon van de network manager in het systeemvak om een internetconnectie op te zetten .

U kunt nog steeds %s installeren zonder een internetconnectie.
Zonder een internetconnectie zal uw systeem niet geupdate worden en kunnen sommige pakketten niet in uw taal geconfigureerd worden. Afsluiten Afsluiten? Echte naam:  Verversen Verwijderbaar: VirtualBox verwijderen Live-configuratie (pakketten) aan het verwijderen Verwijder os-prober Selecteer afbeelding Tijdzone selecteren Gekozen tijdzone: Computernaam instellen Toetsenbordopties instellen Taal en land instellen Setup afgerond Grootte Er is iets mis met het installatie medium! Dit wordt meestal veroorzaakt door brand software die niet compatibel is met {}. Gelieve de ISO naar DVD/USB te branden met een andere tool. Samenvatting Systeeminstellingen Maak een foto Neem een foto... De EFI-partitie is te klein. Hij dient tenminste 100 MB te zijn. De EFI-partitie moet worden geformatteerd als vfat. Opstartlader Grub werd niet juist ingesteld! U dient deze handmatig in te stellen. De hostnaam is onjuist:
niet meer dan 63 tekens tussen punten
en maximaal 255 tekens in totaal. Deze computernaam wordt de naam van uw computer in het netwerk Dit is de naam die u zult gebruiken om u aan te melden op uw computer Deze foto vertegenwoordigt uw gebruikersaccount. Hij wordt gebruikt in het aanmeldscherm en op enkele andere plaatsen. Dit zal getoond worden in de 'Over mij'-toepassing Tijdzone Tijdzone:  Type De afbeelding kan niet geconverteerd worden. Niet in staat om een foto te nemen. Onbekend Partities loskoppelen Apt cache bewerken Het nieuwe systeem updaten Gebruik de reeds gekoppelde %s. Gebruik dit veld om uw toetsenbordindeling uit te proberen Gebruikersinformatie Gebruikersinstellingen Gebruikersnaam:  Variant Controleer dat fstab is correct (gebruik blkid om de UUID's te controleren). Aankoppelingsinformatie bestandssysteem wordt weggeschreven naar /etc/fstab U heeft ervoor gekozen om Grub NIET op uw systeem te installeren.
Zonder bootloader zoals Grub zal uw systeem mogelijk niet starten.

Weet u zeker dat u wilt doorgaan? U heeft ervoor gekozen om de root partitie te versleutelen.

U dient /boot op een afzonderlijke, niet-versleutelde partitie (500 MB) te koppelen.

Versleuteling zal alle gegevens wissen van {}

Weet u zeker dat u wilt doorgaan? U heeft ervoor gekozen om Grub op een partitie te installeren.
Het is aanbevolen om Grub op een schijf in plaats van een partitie te installeren .

Vergewis u ervan dat een andere bootloader reeds geïnstalleerd is.

Weet u zeker dat u wilt doorgaan? U hebt ervoor gekozen om uw partities handmatig te beheren; deze functie is ALLEEN BEDOELD VOOR ERVAREN GEBRUIKERS. U dient eerst uw doel bestandssysteem(en) te koppelen op %s voordat u een aangepaste installatie kunt uitvoeren! U dient een bestandssysteem te kiezen
voor uw versleutelde partitie (standaard: ext4): U dient een koppelpunt te kiezen voor uw partitie: Uw volledige naam Uw wachtwoord Uw wachtwoorden komen niet overeen Uw foto Uw gebruikersnaam Uw gebruikersnaam mag niet met een getal beginnen. Partities bewerken _Expert modus uitgeschakeld ingeschakeld zet boot vlag {} Installatieprogramma {} OEM Setup 