��    �      4  �   L
      �  *   �  &   �  �        �     �  (  �     �  ,   �     (     4     H     X     h     z  E        �     �  �   �     �     �     �     �     �     �               $  �   ,     �  H   �     C  �   W  �   �  F   |     �     �     �     �  
          J   2     }     �     �     �     �  	   �     �  *   �       
   %     0     5     B  
   K  {   V  c   �     6     >  %   Q  �   w     )     F     X     k  Y   �  �   �  =   ^     �     �     �     �     �     �               #  
   ,     7     >     M     Z     m     �     �     �     �  #   �     �                 (   *     S  �   j  �   $     �     �  %   	  F   /  9   v  U   �  7        >  0   Y     �     �  -   �     �     �     �     	  
          &   0     W     j     z     �     �     �     �     �     �     �  :   �  ,   .   n   [   9   �   9   !  a   >!  /   �!     �!  
   �!     �!     �!     �!     "  *   "  	   J"     T"  
   b"     m"  2   u"  �   �"  
  5#  �   @$  ^   (%  N   �%  /   �%     &     &     #&     @&     M&  (   [&     �&     �&     �&     �&     �&     �&  �  �&  #   w(  #   �(  �   �(  &   T)     {)  @  �)  	   �*  ;   �*     +     +     7+     K+     a+     y+  O   +      �+  $   �+  �   ,     �,     �,     �,     -     $-     ;-     R-     g-     u-  �   z-     k.  G   t.     �.  �   �.  �   �/  C   -0     q0  
   �0  "   �0  "   �0     �0     �0  U   �0     M1  $   f1     �1     �1     �1     �1     �1  9   �1     $2     -2     :2     ?2     P2     ]2  �   l2  �   �2     x3     �3  +   �3  �   �3      �4     �4     �4     �4  j   �4  �   V5  N   �5  !   ;6     ]6     v6     �6     �6     �6     �6     �6     �6     �6     �6     �6     7     7     77     V7  "   q7  "   �7     �7  +   �7     �7     8  
   8     8  :   28     m8  �   �8  �   `9  	   X:     b:  ,   p:  S   �:  =   �:  d   /;  ?   �;     �;  7   �;  !   ,<      N<  3   o<  	   �<  
   �<     �<  	   �<     �<     �<  1   �<     '=     ;=     O=     a=     x=     �=     �=     �=     �=     �=  @   �=  3   &>  _   Z>  >   �>  E   �>  v   ??  2   �?     �?  
   �?     �?     @     @  #   @  :   B@     }@     �@     �@     �@  K   �@  �   A  �   �A  �   �B  s   �C  V   	D  2   `D     �D     �D  "   �D     �D     �D  2   �D     #E     6E     DE     RE     _E     mE     ;           �   I      ,      L       ^           �   �   .   �                 R   Z      %   T   \   H           X       Y   n   ~                C      �   #              �   2   -                 s       _   F   6   >   K   j       /          (   G       �   �   g   �   *          }          �   �   J   [      v   M   O      �   �       m   �   k   u   <      +   �   �   w           �          
   d          @   a   {       0   �   l       �   �   `   U   S   �   9   h   N       1       3               �   i               �       W   ]   "   �   �         8      �   r           �              y       f   o           B       �   P   A       �   �                     �   q       4   5   E               :   c   p   Q   x      |   �   �   �   =   �       '   	   z   ?   b   D   $   7   e                   )      !      t   &           �       V    <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> A root partition is needed to install the system.

 - Mount point: /
 - Recommended size: 30GB
 - Recommended filesystem format: ext4
 Adding new user to the system Advanced... An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Apply Are you sure you want to quit the installer? Assign to / Assign to /boot/efi Assign to /home Automatic login Automatic login:  Back Before continuing, please mount your target filesystem(s) at /target. Browse for more pictures... Calculating file indexes ... Cannot download and install additional locale packages: no internet connection
Configuration will still be set to your selected language. Checking bootloader Cleaning APT Click to change your picture Configuring Plymouth Configuring bootloader Configuring initramfs Configuring sensors Copying Country Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Do not install Grub Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be given time to chroot into /target and install any packages that will be needed to boot your new system. During the install, you will be required to write your own /etc/fstab. Edit partition Encrypt Encrypt {} and format as {} Encrypting %(partition)s ... Encryption Encryption password Encryption will erase all data from {}

Are you sure you want to continue? Encryption/password Entering the system ... Error Extended partition Filesystem operations Format as Format {} as {} Formatting %(partition)s as %(format)s ... Forward Free space Grub Grub install Hostname Hostname:  If enabled, the login screen is skipped when the system starts, and you are signed into your desktop session automatically. If you aren't sure what any of this means, please go back and deselect manual partition management. Install Install Grub on {} Install additional localized packages Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Install the operating system Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation. Installation is paused: please finish the custom installation Installation paused Installing bootloader Installing drivers Installing {}... Keyboard layout Keyboard layout:  Label Label (optional) Language Language:  Layout Live Installer Localization Localizing AbiWord Localizing Firefox Localizing KDE Localizing LibreOffice Localizing Thunderbird Localizing packages Log in automatically on system boot Logical partition Model Mount point Mount {}{} as {} Mounting %(partition)s on %(mountpoint)s No internet connection No partition table was found on the hard drive: {disk_description}. Do you want the installer to create a set of partitions for you? Note: This will ERASE ALL DATA present on this disk. Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Password for the encrypted partition: Please do the following and then click Forward to finish installation: Please enter your password twice to ensure it is correct. Please indicate a filesystem to format the root (/) partition with before proceeding. Please make sure you wish to manage partitions manually Please provide a hostname. Please provide a password for your user account. Please provide a username. Please provide your full name. Provide an encryption password for partition: Quit Quit? Real name:  Refresh Removable: Removing VirtualBox Removing live configuration (packages) Removing os-prober Select timezone Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings Take a photo... The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. The hostname is incorrect:
not more than 63 characters between periods
and not more than 255 characters total. This hostname will be the computer's name on the network. This is the name you will use to log in to your computer. This picture represents your user account. It is used in the login screen and a few other places. This will be shown in the About Me application. Timezone Timezone:  Type Unknown Update apt cache Use already-mounted /target. Use this box to test your keyboard layout. User info User settings Username:  Variant Writing filesystem mount information to /etc/fstab You chose to NOT install Grub on your system.
Without a bootloader like Grub your system might not boot.

Are you sure you want to continue? You chose to encrypt the root partition.

You will need to mount /boot on a separate non-encrypted partition (500 MB).
Without a non-encrypted /boot partition your system will be unbootable.

Encryption will erase all data from {}

Are you sure you want to continue? You chose to install Grub on a partition.
It is recommended to install Grub on a disk instead of a partition.

Only continue if you are certain that you have another bootloader already installed.

Are you sure you want to continue? You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. You need to choose a format type
for your encrypted partition (default: ext4): You need to choose a mount point for partition: Your full name Your password Your passwords do not match. Your picture Your username Your username cannot start with a digit. _Edit partitions _Expert mode disabled enabled set boot flag {} Installer Project-Id-Version: live-installer
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-18 08:57+0100
PO-Revision-Date: 2016-01-02 12:41+0000
Last-Translator: Arjen Balfoort <schoelje@solydxk.com>
Language-Team: Dutch (http://www.transifex.com/solydxk/live-installer/language/nl/)
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 <b>Kies a.u.b. een rootpartitie</b> <b>Kies a.u.b. een EFI-partitie</b> Er is een rootpartitie nodig om het systeem te installeren.

 - Koppelpunt: /
 - Aangeraden grootte: meer dan 30GB
 - Aangeraden formattering: ext4
 Gebruiker wordt toegevoegd aan systeem Gevorderd... Er is een EFI-partitie benodigd met de volgende kenmerken:

 - Koppelpunt: /boot/efi
 - Partitievlaggen: opstartbaar
 - Omvang: groter dan 100 MB
 - Formattering: vfat of fat32

Om verenigbaarheid met Windows zeker te stellen raden wij u aan om de eerste partitie van de schijf als de EFI-systeempartitie te gebruiken.
  Toepassen Weet u zeker dat u het installatieprogramma wilt afsluiten? Toewijzen aan / Toewijzen aan /boot/efi Toewijzen aan /home Automatisch aanmelden Automatisch aanmelden:  Terug Voordat u doorgaat: koppel uw doel-bestandssyste(e)m(en) a.u.b. aan op /target. Browse voor meer afbeeldingen... Bestand-indices aan het berekenen... De pakketten om uw systeem te regionaliseren kunnen niet gedownload worden: er is geen internetverbinding
De configuratie zal wel worden ingesteld op de door u geselecteerde taal. Opstartlader controleren APT schoonmaken Klik om uw foto te wijzigen Plymouth configureren Opstartlader instellen Initramfs configureren Sensors configureren Kopiëren van Land Maak /target/etc/fstab aan voor de bestandssystemen zoals ze in uw systeem zullen worden aangekoppeld, overeenkomende met die welke thans zijn aangekoppeld op /target (zonder het voorvoegsel /target te gebruiken in de koppelingspaden zelf). Apparaat Koppel GEEN virtuele apparaten als /dev, /proc en /sys aan op /target/. Installeer geen Grub Vergewis u er nogmaals van dat uw /target/etc/fstab correct is, overeenkomt met wat uw systeem zal hebben bij eerste opstart, en overeenkomt met wat thans is aangekoppeld op /target. Tijdens de installatie krijgt u de gelegenheid om met chroot /target te benaderen om de benodigde pakketten te installeren voor het opstarten van uw nieuwe systeem. Tijdens de installatie zult u uw eigen /etc/fstab moeten schrijven. Partitie bewerken Versleutel Versleutel {} en formatteer als {} Versleutelen van %(partition)s ... Versleuteling Versleutelwachtwoord Versleuteling zal alle gegevens verwijderen van {}

Weet u zeker dat u wilt doorgaan? Versleuteling/wachtwoord Nieuwe systeem aan het binnengaan... Fout Uitgebreide partitie Bewerkingen van bestandssysteem Formatteren als Formatteer {} als {} Bezig met formatteren van %(partition)s als %(format)s... Volgende Vrije ruimte Grub Grub installatie Computernaam Computernaam:  Indien ingeschakeld, wordt het inlogscherm overgeslagen als het systeem start, en wordt u automatisch aangemeld bij de desktop-sessie. Als u niet precies weet wat dit allemaal betekent: ga dan alstublieft terug en maak uw keuze voor handmatig partitiebeheer ongedaan. Installeren Installeer Grub op {} Installeer extra geregionaliseerde software Installeer die pakketten die benodigd kunnen zijn voor eerste opstart (mdadm, cryptsetup, dmraid, etc) door "sudo chroot /target" aan te roepen, gevolgd door de relevante apt-get/aptitude-installaties. Installeer het besturingssysteem Installatieprogramma Installatiefout Installatie voltooid De installatie is nu voltooid. Wilt u uw computer herstarten om het nieuwe besturingssysteem te gebruiken? De installatie is thans tijdelijk onderbroken. Lees a.u.b. zorgvuldig de instructies op de pagina en klik op Volgende om de installatie te voltooien. Installatie is tijdelijk onderbroken: voltooi a.u.b. de aangepaste installatie Installatie tijdelijk onderbroken Opstartlader installeren Drivers installeren Installeren van {}... Toetsenbordindeling Toetsenbordindeling:  Label Label (optioneel) Taal Taal:  Indeling Installatieprogramma Lokalisatie AbiWord wordt geregionaliseerd Firefox wordt geregionaliseerd KDE wordt geregionaliseerd LibreOffice wordt geregionaliseerd Thunderbird wordt geregionaliseerd Pakketten regionaliseren Automatisch aanmelden tijdens het opstarten Logische partitie Model Koppelpunt Koppel {}{} als {} Bezig met aankoppelen van %(partition)s aan %(mountpoint)s Geen internetconnectie Er werd geen partitietabel gevonden op de harde schijf: {disk_description}. Wilt u dat het installatieprogramma de benodigde partities voor u aanmaakt? Let op: deze actie zal alle bestaande gegevens op uw schijf wissen. Let op dat voor een juiste werking van update-initramfs, het in sommige gevallen (zoals dm-crypt) nodig kan zijn om thans stations aangekoppeld te hebben, met gebruikmaking van dezelfde blokapparaatnamen zoals die verschijnen in /target/etc/fstab. Overzicht Partitioneren Uw wachtwoord voor de versleutelde partitie: Doe a.u.b. het onderstaande en klik dan op Volgende om de installatie te voltooien: Voer uw wachtwoord a.u.b. twee maal in om fouten te voorkomen Geef a.u.b. voordat u doorgaat, een bestandssysteem aan voor het formatteren van de rootpartitie (/) Wees er zeker van dat u de partities handmatig wenst te beheren Voer a.u.b. een computernaam in Voer a.u.b. een wachtwoord in voor uw gebruikersaccount Voer a.u.b. een gebruikersnaam in Voer a.u.b. uw volledige naam in Vul uw wachtwoord voor de versleutelde partitie in: Afsluiten Afsluiten? Echte naam:  Verversen Verwijderbaar: VirtualBox verwijderen Live-configuratie (pakketten) aan het verwijderen Verwijder os-prober Tijdzone selecteren Gekozen tijdzone: Computernaam instellen Toetsenbordopties instellen Taal en land instellen Grootte Samenvatting Systeeminstellingen Neem een foto... De EFI-partitie is te klein. Hij dient tenminste 100 MB te zijn. De EFI-partitie moet worden geformatteerd als vfat. De hostnaam is onjuist:
niet meer dan 63 tekens tussen punten
en maximaal 255 tekens in totaal. Deze computernaam wordt de naam van uw computer in het netwerk Dit is de naam die u zult gebruiken om u aan te melden op uw computer Deze foto vertegenwoordigt uw gebruikersaccount. Hij wordt gebruikt in het aanmeldscherm en op enkele andere plaatsen. Dit zal getoond worden in de 'Over mij'-toepassing Tijdzone Tijdzone:  Type Onbekend Apt cache bewerken Gebruik de reeds gekoppelde /target Gebruik dit veld om uw toetsenbordindeling uit te proberen Gebruikersinformatie Gebruikersinstellingen Gebruikersnaam:  Variant Aankoppelingsinformatie bestandssysteem wordt weggeschreven naar /etc/fstab U heeft ervoor gekozen om Grub NIET op uw systeem te installeren.
Zonder bootloader zoals Grub zal uw systeem mogelijk niet starten.

Weet u zeker dat u wilt doorgaan? U heeft ervoor gekozen om de root partitie te versleutelen.

U dient /boot op een afzonderlijke, niet-versleutelde partitie (500 MB) te koppelen.

Versleuteling zal alle gegevens wissen van {}

Weet u zeker dat u wilt doorgaan? U heeft ervoor gekozen om Grub op een partitie te installeren.
Het is aanbevolen om Grub op een schijf in plaats van een partitie te installeren .

Vergewis u ervan dat een andere bootloader reeds geïnstalleerd is.

Weet u zeker dat u wilt doorgaan? U hebt ervoor gekozen om uw partities handmatig te beheren; deze functie is ALLEEN BEDOELD VOOR ERVAREN GEBRUIKERS. U dient een bestandssysteem te kiezen
voor uw versleutelde partitie (standaard: ext4): U dient een koppelpunt te kiezen voor uw partitie: Uw volledige naam Uw wachtwoord Uw wachtwoorden komen niet overeen Uw foto Uw gebruikersnaam Uw gebruikersnaam mag niet met een getal beginnen. Partities bewerken _Expert modus uitgeschakeld ingeschakeld zet boot vlag {} Installatieprogramma 