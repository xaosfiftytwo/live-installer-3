��    �      <  �   \
      �  *   �  &     �   +     �     �  (  �       ,        8     D     X     h     x     �  E   �     �     �  �        �     �     �     �     �                 �   '     �  H   �     >  �   R  �   �  F   w     �     �     �     �  
          J   -     x     �     �     �     �  	   �     �  *   �       
         +     0     =  
   F  {   Q  c   �     1     9  %   L  �   r     $     A     S     f  Y   |  �   �  =   Y     �     �     �     �     �     �                 
   '     2     9     H     U     h     {     �     �     �  #   �     �                 (   %     N  �   e  �        �     �  %     F   *  9   q  U   �  7        9  0   T     �     �  -   �     �     �     �       
          &   +     R     e     u     �     �     �     �  �   �     ~      �      �   :   �   ,   �   S   !  n   b!  9   �!  9   "  a   E"  /   �"     �"  
   �"     �"     �"     �"     	#  *   &#  	   Q#     [#  
   i#     t#  2   |#  �   �#  
  <$  �   G%  ^   /&  N   �&  /   �&     '     '     *'     G'     T'  (   b'     �'     �'     �'     �'     �'     �'  �  �'  *   �)  '   �)  �   �)      j*     �*  2  �*     �+  <   �+     ,     ,     .,     ?,     U,     l,  S   t,     �,     �,  �   �,     �-  
   �-     �-     �-     �-     .     .     '.  �   ,.     �.  F   �.     A/  �   U/  �   �/  G   z0     �0     �0     �0     �0  
   1     1  L   21     1     �1     �1     �1     �1     �1     �1  +   �1     2     (2     ;2     @2  	   R2     \2     h2  r   �2  	   [3     e3  -   {3  �   �3     Z4     u4     �4     �4  \   �4  �   5  Q   �5     �5     6     -6     A6     S6     c6     w6     6     �6     �6  	   �6     �6  
   �6     �6     �6     �6     	7     %7     A7      X7     y7     �7     �7     �7  '   �7     �7  �   �7  �   �8     �9     �9  &   �9  J   �9  E   -:  S   s:  H   �:     ;  -   -;     [;      z;  +   �;     �;     �;     �;     �;  	   �;     �;  +   <     :<     L<     Z<     j<      <     �<  
   �<  �   �<     =     �=     �=  8   �=  (   �=  X   >  e   k>  <   �>  C   ?  b   R?  '   �?     �?  
   �?     �?     �?     �?     @  1   1@     c@     u@     �@     �@  <   �@  �   �@  �   �A    HB  c   OC  H   �C  0   �C  
   -D     8D     @D  
   ^D  
   iD  /   tD     �D     �D  
   �D     �D     �D     �D     :           �   H      +      K       ]           �   �   -   �                 Q   Y      $   S   [   G           W       X   m   ~                B      �   "              �   1   ,                 r       ^   E   5   =   J   i       .          '   F       �   �   f   �   )          }   �      �   �   I   Z      u   L   N       �   �       l   �   j   t   ;      *   �   �   v           �          
   c          ?   `   z       /   �   k       �   �   _   T   R   �   8   g   M       0       2       {       �   h               �       V   \   !   �   �         7      �   q           �              x       e   n           A       �   O   @       �   �                    �   p       3   4   D               9   b   o   P   w      |   �   �   �   <   �       &   	   y   >   a   C   #   6   d                   (             s   %           �       U    <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> A root partition is needed to install the system.

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
Configuration will still be set to your selected language. Checking bootloader Cleaning APT Click to change your picture Configuring bootloader Configuring initramfs Configuring sensors Copying Country Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Do not install Grub Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be given time to chroot into /target and install any packages that will be needed to boot your new system. During the install, you will be required to write your own /etc/fstab. Edit partition Encrypt Encrypt {} and format as {} Encrypting %(partition)s ... Encryption Encryption password Encryption will erase all data from {}

Are you sure you want to continue? Encryption/password Entering the system ... Error Extended partition Filesystem operations Format as Format {} as {} Formatting %(partition)s as %(format)s ... Forward Free space Grub Grub install Hostname Hostname:  If enabled, the login screen is skipped when the system starts, and you are signed into your desktop session automatically. If you aren't sure what any of this means, please go back and deselect manual partition management. Install Install Grub on {} Install additional localized packages Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Install the operating system Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation. Installation is paused: please finish the custom installation Installation paused Installing bootloader Installing drivers Installing {}... Keyboard layout Keyboard layout:  Label Label (optional) Language Language:  Layout Live Installer Localization Localizing AbiWord Localizing Firefox Localizing KDE Localizing LibreOffice Localizing Thunderbird Localizing packages Log in automatically on system boot Logical partition Model Mount point Mount {}{} as {} Mounting %(partition)s on %(mountpoint)s No internet connection No partition table was found on the hard drive: {disk_description}. Do you want the installer to create a set of partitions for you? Note: This will ERASE ALL DATA present on this disk. Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Password for the encrypted partition: Please do the following and then click Forward to finish installation: Please enter your password twice to ensure it is correct. Please indicate a filesystem to format the root (/) partition with before proceeding. Please make sure you wish to manage partitions manually Please provide a hostname. Please provide a password for your user account. Please provide a username. Please provide your full name. Provide an encryption password for partition: Quit Quit? Real name:  Refresh Removable: Removing VirtualBox Removing live configuration (packages) Removing os-prober Select timezone Selected timezone: Setting hostname Setting keyboard options Setting locale Size Something is wrong with the installation medium! This is usually caused by burning tools which are not compatible with {}. Please burn the ISO image to DVD/USB using a different tool. Summary System settings Take a photo... The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. The grub bootloader was not configured properly! You need to configure it manually. The hostname is incorrect:
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
for your encrypted partition (default: ext4): You need to choose a mount point for partition: Your full name Your password Your passwords do not match. Your picture Your username Your username cannot start with a digit. _Edit partitions _Expert mode disabled enabled set boot flag {} Installer Project-Id-Version: live-installer-3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-27 14:53+0100
PO-Revision-Date: 2016-01-19 14:31+0000
Last-Translator: Arjen Balfoort <schoelje@solydxk.com>
Language-Team: Norwegian Bokmål (http://www.transifex.com/solydxk/live-installer-3/language/nb/)
Language: nb
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 <b>Vennligst velg en rot (/) partisjon</b> <b>Vennligst velg en EFI partisjon.</b> En rot-partisjon er nødvendig for å installere systemet.

- Monteringspunkt: /
- Anbefalt størrelse: 30GB
- Anbefalt filsystem: ext4
 Legger en ny bruker til systemet Avansert... En EFI systempartisjon er nødvendig med følgende krav:

- Monteringspunkt: / boot / efi
- Partisjonsflagg: Oppstartbar
- Størrelse: Større enn 100MB
- Format: vfat eller fat32

For å sikre kompatibilitet med Windows anbefaler vi at du bruker den første partisjonen på disken som EFI systempartisjon. Bruk Er du sikker på at du vil avslutte installasjonsprogrammet? Tildel til / Tildel til /boot/efi Tildel til /home Automatisk innlogging Automatisk innlogging: Tilbake Før du fortsetter, vennligst monter mål-filsystemet(-systemene) dine på /target. Bla for flere bilder... Beregner fil-registere ... Kan ikke laste ned og installere de lokale pakkene: ingen internettforbindelse
Konfigurasjonen vill likevel bli satt til det språket du har valgt. Sjekker oppstartslasteren Renser APT Klikk for å bytte bilde ditt Konfigurerer oppstartslasteren Konfigurerer initramfs Konfigurerer sensorer Kopierer Land Opprett /target/fstab for filsystemet slik de vil bli montert på ditt nye system, overensstemmende med det som i nå er montert på /target (uten å bruke /target-prefikset i selve monteringsstien). Enhet IKKE monter virtuelle enheter som /dev, /proc, /sys, etc på /target/. Ikke installer Grub Dobbelsjekk at /mål/etc/fstab er korrekt, stemmer med hva ditt nye system vil ha ved oppstart og stemmer med hva som nå er montert på /target. Under installasjonen vil du få tid til å bruke chroot til /target og installere de nødvendige pakkene som trengs for å starte ditt nye system. Under installasjonen vil du bli påkrevd å skrive din egen /etc/fstab. Endre partisjon Krypter Krypter {} og formater som {} Krypterer %(partition)s ... Kryptering Krypteringspassord Kryptering vil fjerne alle data fra {}
Er du sikker på at du vil fortsette? Kryptering/passord Går inn i systemet ... Feil Utvid partisjon Filsystemhandlinger Formater som Formater {} som {} Formaterer %(partition)s som %(format)s ... Fremover Tilgjengelig plass Grub Grub installering Vertsnavn Vertsnavn:  Hvis aktivert, blir påloggingsskjermen hoppet når systemet starter, og du blir logget inn i skrivebordsøkten din automatisk. Vennligst gå tilbake og opphev valget manuell partisjonsbehandling dersom du ikke  er sikker på hva dette betyr. Installer Installer Grub på {} Installer ytterligere språktilpassede pakker Installer alle pakkene som trengs ved oppstart (mdadm, cryptsetup, dmraid, etc) ved å kjøre "sudo chroot /target" etterfulgt av de relevante apt-get/aptitude installasjonene. Installer operativsystemet Installasjonsverktøy Installasjonsfeil Installasjonen er fullført Installasjonen er nå fullført. Vil du restarte datamaskinen for å bruke det nye systemet? Installasjonen er satt på vent.  Vennligst les instruksjonene på siden nøye før du klikker Videre for å fullføre installasjonen. Installasjonen er satt på vent: vennligst fullfør den tilpassede installasjonen Installasjonen er satt på vent Installerer oppstartslasteren Installerer drivere Installerer {}... Tastaturoppsett Tastaturutforming:  Etikett Etikett (valgfri) Språk Språk:  Utforming Live Installer Plassering Språktilpasser AbiWord Språktilpasser Firefox Språktilpasser KDE Språktilpasser LibreOffice Språktilpasser Thunderbird Språktilpasser pakker Logg inn automatisk ved oppstart Logisk partisjon Modell Monteringspunkt Monter {}{} som {} Monterer %(partition)s i %(mountpoint)s Ingen internettforbindelse Ingen partisjonstabell ble funnet på harddisk drev: {disk_description}. Vil du at installasjonsprogrammet skal lage et sett av partisjoner for deg? Merk: Dette vil SLETTE ALLE DATA som befinner seg på disken. Legg merke til at for at update-initramfs skal fungere må du, i noen tilfeller (for eksempel med dm-crypt), kanskje allerede ha stasjoner montert med samme blokk-enhetsnavn som det som framgår av /target/etc/fstab. Oversikt Partisjonering Passord for den krypterte partisjonen: Vennligst gjør følgende og klikk Videre for å fullføre installasjonen: Vennligst skriv passordet om igjen for å bekrefte at det er riktig.  Vennligst angi en filsystem å formatere rotpartisjonen (/) med før du fortsetter. Vennligst forsikre deg om at du ønsker å tilpasse partisjonene manuelt Vennligst angi et vertsnavn. Vennligst skriv et passord for brukerkontoen. Vennligst skriv et brukernavn. Vennligst skriv ditt fulle navn. Angi et krypteringspassord for partisjonen: Avslutt Avslutt? Virkelig navn:  Oppdater Flyttbar: Fjerner VirtualBox Fjerner midlertidige innstillinger (pakker) Fjerner os-prober Velg tidssone Valgt tidssone: Setter opp vertsnavn Setter opp tastaturinnstillinger Setter opp område-opplysninger Størrelse Noe er galt med installasjonsmediet! Dette er vanligvis forårsaket av brenne-verktøy som ikke er kompatible med {}. Vennligst brenn ISO-bildet til DVD/USB med et annet verktøy. Oppsummering. Systeminnstillinger Ta et bilde... EFI partisjonen er for liten. Den må være minst 100MB. EFI partisjonen må formateres som vfat. Oppstartslasteren (grub) ble ikke ordentlig konfigurert. Du må konfigurere den manuelt. Vertsnavnet er uriktig:
Ikke mer en 63 bokstaver mellom punktum
og ikke mer enn totalt 255 bokstaver. Dette vertsnavnet vil bli datamaskinens navn på nettverket. Dette er det navnet du vil bruke til å logge inn på datamaskinen. Dette bildet representerer din brukerkonto. Det er brukt i login skjermen og et par andre plasser. Dette vil bli vist i Om Meg-programmet. Tidssone Tidssone:  Skriv Ukjent Oppdater apt buffer Bruk allerede montert /target. Bruk dette feltet til å teste tastaturoppsettet. Brukerinformasjon Brukerinnstillinger Brukernavn:  Variant Skriver monteringsinformasjon for filsystemet til /etc/fstab Du har valgt å IKKE installere Grub på systemet.
Uten en oppstartlaster som Grub kan det være at systemet ikke vil starte.

Er du sikker på at du vil fortsette? Du har valgt å kryptere rotpartisjonen.
Du vil trenge å montere/starte på en separat ikke-kryptert partisjon (500 MB).
Kryptering vil slette alle data fra {}.
Er du sikker på at du vil fortsette? Du har valgt å installere Grub på en partisjon.
Det er anbefalt å installere Grub på en disk isteden for en partisjon.
Du bør bare fortsette dersom du er sikker på at du allerede har installert en annen oppstartlaster.
Er du sikker på at du vil fortsette? Du har valgt å manuelt sette opp dine partisjoner, denne funksjonen er BARE FOR AVANSERTE BRUKERE. Du må velge en formattype
for din krypterte partisjon (standard: ext4): Du må velge et monteringspunkt for partisjonen: Fullt navn Passord Passordene dine er ikke like. Ditt bilde Brukernavn Brukernavnet ditt kan ikke begynne med et tall. _Rediger partisjoner _Ekspertmodus deaktivert aktivert sett oppstartsflagg {} Installasjonsprogram 