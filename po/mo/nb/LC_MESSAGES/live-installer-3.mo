��    �      �  �   �      x  *   y  &   �  J   �  �        �     �  (  �     �  ,   �     #     /     C     S     c     u     z  @   �     �     �  �        �     �     �     �     �               $  �   ,     �  C   �     /  �   C  �   �  F   Y     �     �     �     �  
   �     �  J        Z     n     �     �     �  	   �     �  *   �     �  
                       3  
   <  {   G  c   �     '     /  %   B  �   h          2     D     W  Y   m  �   �  =   J     �     �     �     �     �     �                    *  
   3     >     E     T     a     t     �     �     �     �  #   �     �                  (   1     Z     l  �   �     =  �   I            %   )  F   O  9   �  U   �  7   &      ^   0   y   '   �      �      �     !  -   "     C"     H"     N"     Z"  
   b"     m"  &   �"     �"     �"     �"     �"     �"     �"     #     $#  2   3#     f#  �   k#     #$     +$     ;$     H$  :   X$  ,   �$  S   �$  n   %  9   �%  9   �%  a   �%  /   Y&     �&  
   �&     �&     �&     �&     �&     �&     �&     '     '  *   4'  	   _'     i'  
   w'     �'  <   �'  2   �'  �   �'  
  �(  �   �)  ^   z*  U   �*  N   /+  /   ~+     �+     �+     �+     �+     �+  (   ,     ,,     =,     J,     S,     [,     i,     v,  �  �,  *   ;.  '   f.  P   �.  �   �.      h/     �/  2  �/     �0  <   �0     
1     1     ,1     =1     S1     j1      r1  N   �1     �1     �1  �   2     �2  
   �2     �2     �2     3     "3     83     A3  �   F3     �3  A   4     G4  �   [4  �   �4  G   s5     �5     �5     �5     �5  
   6     6  L   +6     x6     �6     �6     �6     �6     �6     �6  +   �6     7     !7     47     97     K7  	   d7     n7     z7  r   �7  	   m8     w8  -   �8  �   �8     g9     �9     �9     �9  \   �9  �   #:  Q   �:     �:     ;     6;     T;     h;     z;     �;     �;     �;     �;     �;  	   �;     �;  
   �;     �;     <     <     0<     L<     h<      <     �<     �<     �<     �<  '   �<     =     =  �   3=     >  �   >     �>     �>  &   �>  J   &?  E   q?  S   �?  H   @     T@  -   q@  '   �@     �@      �@    A  +   B     AB     IB     RB     bB  	   kB     uB  +   �B     �B  
   �B     �B     �B     �B      C     %C     EC  4   ^C  
   �C  �   �C     RD     `D     tD     �D  8   �D  (   �D  X   �D  e   JE  <   �E  C   �E  b   1F  '   �F     �F  
   �F     �F     �F     �F     
G     G     (G     <G     VG  1   pG     �G     �G     �G     �G  =   �G  <   H  �   XH  �   �H    �I  c   �J  G   0K  H   xK  0   �K  
   �K     �K     L  
   #L  
   .L  /   9L     iL     ~L  
   �L     �L     �L     �L     �L     �   (   y   4       �   ?       I   Y   �       n   8          Z   P   �   ~   o   �   �   v                      �   \      �   @   �          <      9   f   "   �   �       N   �          ,   �      �               }      u   �   e       �   �   �              Q       D      �   t   d   A          �       j   B       �   �   x       G   H   �          7       �   S   z   �   '           �                X   s   �   -   )           $   M       �   ]   ;   �   �           p   �   m       �   K         _          *              a       �   R       O   V       {   �               i       F   U       �   `   0   L   �       w   b      q           /   �       g           T          E          �   �   �      :   &       6              �   	   +   �      c       �   J   �   =   �   r       1   >          [      W   �       |      h   �       
   2   �       �   �           ^   k   !   �       �           5   C       l   .   �   �              �   %   #   3   �    <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> A chrooted terminal and fstab will be opened after you close this message. A root partition is needed to install the system.

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

Are you sure you want to continue? Encryption/password Entering the system ... Error Extended partition Filesystem operations Format as Format {} as {} Formatting %(partition)s as %(format)s ... Forward Free space Grub Grub install Grub not configured Hostname Hostname:  If enabled, the login screen is skipped when the system starts, and you are signed into your desktop session automatically. If you aren't sure what any of this means, please go back and deselect manual partition management. Install Install Grub on {} Install additional localized packages Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot %s" followed by the relevant apt-get/aptitude installations. Install the operating system Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation. Installation is paused: please finish the custom installation Installation paused Installing EFI packages... Installing bootloader Installing drivers Installing {}... Keyboard layout Keyboard layout:  Label Label (optional) Language Language:  Layout Live Installer Localization Localizing AbiWord Localizing Firefox Localizing KDE Localizing LibreOffice Localizing Thunderbird Localizing packages Log in automatically on system boot Logical partition Model Mount point Mount {}{} as {} Mounting %(partition)s on %(mountpoint)s No %s file found! No internet connection No partition table was found on the hard drive: {disk_description}. Do you want the installer to create a set of partitions for you? Note: This will ERASE ALL DATA present on this disk. Not mounted Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in %s/etc/fstab. Overview Partitioning Password for the encrypted partition: Please do the following and then click Forward to finish installation: Please enter your password twice to ensure it is correct. Please indicate a filesystem to format the root (/) partition with before proceeding. Please make sure you wish to manage partitions manually Please provide a hostname. Please provide a password for your user account. Please provide a username without -oem. Please provide a username. Please provide your full name. Please, click on the network manager's system tray icon to connect to the internet before you continue.

You can still install %s without an internet connection.
Without an internet connection your system will not be upgraded and some packages cannot be localized. Provide an encryption password for partition: Quit Quit? Real name:  Refresh Removable: Removing VirtualBox Removing live configuration (packages) Removing os-prober Select image Select timezone Selected timezone: Setting hostname Setting keyboard options Setting locale Setup finished Setup is now complete. The system will now reboot. Size Something is wrong with the installation medium! This is usually caused by burning tools which are not compatible with {}. Please burn the ISO image to DVD/USB using a different tool. Summary System settings Take a photo Take a photo... The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. The grub bootloader was not configured properly! You need to configure it manually. The hostname is incorrect:
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
POT-Creation-Date: 2016-03-24 08:18+0100
PO-Revision-Date: 2016-03-22 20:02+0000
Last-Translator: Anders Dalen <anders@andersdalen.no>
Language-Team: Norwegian Bokmål (http://www.transifex.com/solydxk/live-installer-3/language/nb/)
Language: nb
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 <b>Vennligst velg en rot (/) partisjon</b> <b>Vennligst velg en EFI partisjon.</b> En chrootet terminal og fstab vil bli åpnet etter at du lukker denne meldingen. En rot-partisjon er nødvendig for å installere systemet.

- Monteringspunkt: /
- Anbefalt størrelse: 30GB
- Anbefalt filsystem: ext4
 Legger en ny bruker til systemet Avansert... En EFI systempartisjon er nødvendig med følgende krav:

- Monteringspunkt: / boot / efi
- Partisjonsflagg: Oppstartbar
- Størrelse: Større enn 100MB
- Format: vfat eller fat32

For å sikre kompatibilitet med Windows anbefaler vi at du bruker den første partisjonen på disken som EFI systempartisjon. Bruk Er du sikker på at du vil avslutte installasjonsprogrammet? Tildel til / Tildel til /boot/efi Tildel til /home Automatisk innlogging Automatisk innlogging: Tilbake Hovedfilsystemet eksisterer ikke Før du fortsetter, vennligst monter mål-filsystemet(-systemene) dine på %s. Bla for flere bilder... Beregner fil-registere ... Kan ikke laste ned og installere de lokale pakkene: ingen internettforbindelse
Konfigurasjonen vill likevel bli satt til det språket du har valgt. Sjekker oppstartslasteren Renser APT Klikk for å bytte bilde ditt Konfigurerer oppstartslasteren Konfigurerer initramfs Konfigurerer sensorer Kopierer Land Opprett %s/fstab for filsystemet slik de vil bli montert på ditt nye system, overensstemmende med det som i nå er montert på %s (uten å bruke %s-prefikset i selve monteringsstien). Enhet IKKE monter virtuelle enheter som /dev, /proc, /sys, etc på %s/. Ikke installer Grub Dobbelsjekk at %s/etc/fstab er korrekt, stemmer med hva ditt nye system vil ha ved oppstart og stemmer med hva som nå er montert på %s. Under installasjonen vil du få tid til å bruke chroot til %s og installere de nødvendige pakkene som trengs for å starte ditt nye system. Under installasjonen vil du bli påkrevd å skrive din egen /etc/fstab. Endre partisjon Krypter Krypter {} og formater som {} Krypterer %(partition)s ... Kryptering Krypteringspassord Kryptering vil fjerne alle data fra {}
Er du sikker på at du vil fortsette? Kryptering/passord Går inn i systemet ... Feil Utvid partisjon Filsystemhandlinger Formater som Formater {} som {} Formaterer %(partition)s som %(format)s ... Fremover Tilgjengelig plass Grub Grub installering Grub er ikke konfigurert Vertsnavn Vertsnavn:  Hvis aktivert, blir påloggingsskjermen hoppet når systemet starter, og du blir logget inn i skrivebordsøkten din automatisk. Vennligst gå tilbake og opphev valget manuell partisjonsbehandling dersom du ikke  er sikker på hva dette betyr. Installer Installer Grub på {} Installer ytterligere språktilpassede pakker Installer alle pakkene som trengs ved oppstart (mdadm, cryptsetup, dmraid, etc) ved å kjøre "sudo chroot %s" etterfulgt av de relevante apt-get/aptitude installasjonene. Installer operativsystemet Installasjonsverktøy Installasjonsfeil Installasjonen er fullført Installasjonen er nå fullført. Vil du restarte datamaskinen for å bruke det nye systemet? Installasjonen er satt på vent.  Vennligst les instruksjonene på siden nøye før du klikker Videre for å fullføre installasjonen. Installasjonen er satt på vent: vennligst fullfør den tilpassede installasjonen Installasjonen er satt på vent Installerer EFI-pakker... Installerer oppstartslasteren Installerer drivere Installerer {}... Tastaturoppsett Tastaturutforming:  Etikett Etikett (valgfri) Språk Språk:  Utforming Live Installer Plassering Språktilpasser AbiWord Språktilpasser Firefox Språktilpasser KDE Språktilpasser LibreOffice Språktilpasser Thunderbird Språktilpasser pakker Logg inn automatisk ved oppstart Logisk partisjon Modell Monteringspunkt Monter {}{} som {} Monterer %(partition)s i %(mountpoint)s Ingen %s-fil funnet! Ingen internettforbindelse Ingen partisjonstabell ble funnet på harddisk drev: {disk_description}. Vil du at installasjonsprogrammet skal lage et sett av partisjoner for deg? Merk: Dette vil SLETTE ALLE DATA som befinner seg på disken. Ikke montert Legg merke til at for at update-initramfs skal fungere må du, i noen tilfeller (for eksempel med dm-crypt), kanskje allerede ha stasjoner montert med samme blokk-enhetsnavn som det som framgår av %s/etc/fstab. Oversikt Partisjonering Passord for den krypterte partisjonen: Vennligst gjør følgende og klikk Videre for å fullføre installasjonen: Vennligst skriv passordet om igjen for å bekrefte at det er riktig.  Vennligst angi en filsystem å formatere rotpartisjonen (/) med før du fortsetter. Vennligst forsikre deg om at du ønsker å tilpasse partisjonene manuelt Vennligst angi et vertsnavn. Vennligst skriv et passord for brukerkontoen. Vennligst angi et brukernavn uten -oem. Vennligst skriv et brukernavn. Vennligst skriv ditt fulle navn. Vennligst klikk på systemikonet til nettverks-behandleren for å koble til internett før du fortsetter.

Du kan fortsatt installere %s uten en internettforbindelse.
Uten en internettforbindelse vil ikke systemet ditt bli oppgradert og noen pakker vil ikke oversettes. Angi et krypteringspassord for partisjonen: Avslutt Avslutt? Virkelig navn:  Oppdater Flyttbar: Fjerner VirtualBox Fjerner midlertidige innstillinger (pakker) Fjerner os-prober Velg bilde Velg tidssone Valgt tidssone: Setter opp vertsnavn Setter opp tastaturinnstillinger Setter opp område-opplysninger Installeringen er ferdig Installasjonen er ferdig. Systemet vil nå restarte. Størrelse Noe er galt med installasjonsmediet! Dette er vanligvis forårsaket av brenne-verktøy som ikke er kompatible med {}. Vennligst brenn ISO-bildet til DVD/USB med et annet verktøy. Oppsummering. Systeminnstillinger Ta et bilde Ta et bilde... EFI partisjonen er for liten. Den må være minst 100MB. EFI partisjonen må formateres som vfat. Oppstartslasteren (grub) ble ikke ordentlig konfigurert. Du må konfigurere den manuelt. Vertsnavnet er uriktig:
Ikke mer en 63 bokstaver mellom punktum
og ikke mer enn totalt 255 bokstaver. Dette vertsnavnet vil bli datamaskinens navn på nettverket. Dette er det navnet du vil bruke til å logge inn på datamaskinen. Dette bildet representerer din brukerkonto. Det er brukt i login skjermen og et par andre plasser. Dette vil bli vist i Om Meg-programmet. Tidssone Tidssone:  Skriv Kan ikke konvertere bildet. Klarte ikke å ta bilde Ukjent Avmonterer partisjoner Oppdater apt buffer Oppdater det nye systemet Bruk allerede montert %s. Bruk dette feltet til å teste tastaturoppsettet. Brukerinformasjon Brukerinnstillinger Brukernavn:  Variant Påse at fstab er riktig (bruk blkid for å sjekke UUID-ene). Skriver monteringsinformasjon for filsystemet til /etc/fstab Du har valgt å IKKE installere Grub på systemet.
Uten en oppstartlaster som Grub kan det være at systemet ikke vil starte.

Er du sikker på at du vil fortsette? Du har valgt å kryptere rotpartisjonen.
Du vil trenge å montere/starte på en separat ikke-kryptert partisjon (500 MB).
Kryptering vil slette alle data fra {}.
Er du sikker på at du vil fortsette? Du har valgt å installere Grub på en partisjon.
Det er anbefalt å installere Grub på en disk isteden for en partisjon.
Du bør bare fortsette dersom du er sikker på at du allerede har installert en annen oppstartlaster.
Er du sikker på at du vil fortsette? Du har valgt å manuelt sette opp dine partisjoner, denne funksjonen er BARE FOR AVANSERTE BRUKERE. Du må først manuelt montere mål-filsystemet(-systemene) dine på %s. Du må velge en formattype
for din krypterte partisjon (standard: ext4): Du må velge et monteringspunkt for partisjonen: Fullt navn Passord Passordene dine er ikke like. Ditt bilde Brukernavn Brukernavnet ditt kan ikke begynne med et tall. _Rediger partisjoner _Ekspertmodus deaktivert aktivert sett oppstartsflagg {} Installasjonsprogram {} OEM Installering 