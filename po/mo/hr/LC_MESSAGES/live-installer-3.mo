��    �      t  �   �
      `  *   a  &   �  J   �  �   �     �     �  (  �     �  ,   �               +     ;     K     ]     b  @   �     �  �   �     h     |     �     �     �     �     �  �   �     �  C   �     �  �   �  �   �  F        U     d     l     �  
   �     �  J   �          '     -     @  	   V     `  *   p     �  
   �     �     �     �     �  
   �  {   �  c   d     �     �  %   �  �   	     �     �     �     �  Y     �   h  =   �     )     =     X     n     �     �     �     �     �     �  
   �     �     �     �               (     7     N     e  #   y     �     �     �     �  (   �     �       �        �     �  %   �  F   $  9   k  U   �  7   �     3  0   N          �     �     �     �     �  
   �     �  &   �          1     >     N     a     r     �     �  �   �     W      _      o      |   :   �   ,   �   S   �   n   H!  9   �!  9   �!  a   +"  /   �"     �"  
   �"     �"     �"     �"     �"     #     #     3#  *   K#  	   v#     �#  
   �#     �#  <   �#  2   �#  �   $  
  �$  �   �%  ^   �&  U   �&  N   F'  /   �'     �'     �'     �'     �'     (  (   (     C(     T(     a(     j(     r(     �(  �  �(  +   �*  &   �*  K   �*  �   $+  "   �+     �+  "  �+     -  -   -  
   H-     S-     f-     u-     �-     �-  "   �-  N   �-  #   .  �   8.  &   �.     �.     �.  %   /     A/  	   W/     a/  �   i/     30  J   ;0     �0  �   �0  �   F1  ]   �1     C2  
   S2  "   ^2     �2  
   �2     �2  P   �2     3     &3     .3     C3     ^3     m3  )   �3     �3     �3     �3     �3     �3     �3     4  w   4  i   �4  
   �4     5  (   5  �   A5     6      6     56     I6  j   _6  �   �6  B   K7     �7     �7  '   �7     �7     �7     8      8     78     >8     R8     X8     `8     i8     y8     �8     �8     �8     �8     �8     �8  +   9     .9     A9     H9     Z9  *   o9     �9     �9  �   �9     �:     �:     �:  J   �:  5   ;  S   O;  <   �;     �;  2   �;     1<     Q<     p<     w<     <     �<  
   �<     �<  %   �<     �<     �<     =     =     6=  #   T=     x=  	   �=  �   �=     ]>     f>     w>     �>  5   �>  ?   �>  Q   ?  t   a?  8   �?  >   @  d   N@  -   �@     �@     �@     A  !   A  	   )A     3A  "   LA     oA     �A  8   �A     �A     �A     
B     B  D   %B  C   jB  �   �B  �   JC  �   JD  Y   ,E  k   �E  M   �E  /   @F     pF     F     �F     �F     �F  0   �F     �F     G     G  
   'G     2G     IG        >           s   �   )              J   e          t   <       �   A   $   |   l   �       9   �   Y       �   �       �   
   ?   j       �   7   �   ,   f       -   "   H   �      v   �   F   �              �   �   \   �       R            G   Q   �   *       �                          g   �   �      z                  K   r   &   D   ^                     �   u   5   �      k   m   ;   n   2   C   �   �   �   �   �   	   x   �   �   =   I   �   y   �       Z          �       M             �   8   V   d   o   _   ~   /              c                                   h              6       p   U       X   �      q          �           �       �   �           i           �   �       �   ]       0   a          B   .   O   b   (   P   T   @   :      L   w   �       E   �              [       '   !   {          W   #   4   }   +   1       �   %   �   N   3   `       S    <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> A chrooted terminal and fstab will be opened after you close this message. A root partition is needed to install the system.

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

Are you sure you want to continue? Entering the system ... Error Extended partition Filesystem operations Format as Format {} as {} Formatting %(partition)s as %(format)s ... Forward Free space Grub Grub install Grub not configured Hostname Hostname:  If enabled, the login screen is skipped when the system starts, and you are signed into your desktop session automatically. If you aren't sure what any of this means, please go back and deselect manual partition management. Install Install Grub on {} Install additional localized packages Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot %s" followed by the relevant apt-get/aptitude installations. Install the operating system Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation. Installation is paused: please finish the custom installation Installation paused Installing EFI packages... Installing bootloader Installing drivers Installing {}... Keyboard layout Keyboard layout:  Label Label (optional) Language Language:  Layout Live Installer Localization Localizing AbiWord Localizing Firefox Localizing KDE Localizing LibreOffice Localizing Thunderbird Localizing packages Log in automatically on system boot Logical partition Model Mount point Mount {}{} as {} Mounting %(partition)s on %(mountpoint)s No internet connection Not mounted Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in %s/etc/fstab. Overview Partitioning Password for the encrypted partition: Please do the following and then click Forward to finish installation: Please enter your password twice to ensure it is correct. Please indicate a filesystem to format the root (/) partition with before proceeding. Please make sure you wish to manage partitions manually Please provide a hostname. Please provide a password for your user account. Please provide a username. Please provide your full name. Quit Quit? Real name:  Refresh Removable: Removing VirtualBox Removing live configuration (packages) Removing os-prober Select image Select timezone Selected timezone: Setting hostname Setting keyboard options Setting locale Size Something is wrong with the installation medium! This is usually caused by burning tools which are not compatible with {}. Please burn the ISO image to DVD/USB using a different tool. Summary System settings Take a photo Take a photo... The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. The grub bootloader was not configured properly! You need to configure it manually. The hostname is incorrect:
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
POT-Creation-Date: 2016-06-13 09:38+0200
PO-Revision-Date: 2016-04-05 12:27+0000
Last-Translator: Arjen Balfoort <schoelje@solydxk.com>
Language-Team: Croatian (http://www.transifex.com/solydxk/live-installer-3/language/hr/)
Language: hr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
 <b>Molimo odaberite root (/) particiju.</b> <b>Molimo odaberite EFI particiju.</b>  Chroot terminal i fstab će biti otvoreni nakon što zatvorite ovu poruku. Root particija je potrebna za instaliranje sustava.

- Točka mountiranja: /
- Preporučena veličina: 30 GB
- Preporučeni format sustava datoteka: ext4
 Dodavanje novog korisnika u sistem Napredno... EFI particija sustava zahtijeva:

 - Točka montiranja: /boot/efi
 - Zastavica particije: Bootabilna
 - Veličina: veća od 100 MB
 - Datotečni format: vfat ili fat32

Da bi osigurali kompatibilnost s Windowsima preporučljivo je koristiti prvu particiju diska kao EFI particiju sustava.
  Primjeni Jeste li sigurni da želite ugasiti instaler? Dodijeli / Dodijeli /boot/efi Dodijeli /home Automatska prijava Automatska prijava: Nazad Bazni datotečni sustav ne postoji Prije nastavka instalacije montirajte svoj odredišni datotečni sustav na %s. Pretražiti za više fotografija... Ne mogu preuzeti i instalirati dodatne lokalne pakete: nema internet veze
Konfiguracija će i dalje biti postavljena na odabranom jeziku. Provjeravam učitač podizanja sustava Čišćenje APT-a Kliknite za izmjenu vaše slike Podešavam učitač podizanja sustava Konfiguracija senzora Kopiranje Država Napravite %s/etc/fstab za datotečene sustave kako bi bili montirani u vašem novom sustavu, tako da odgovara trenutno montiranim uređajima na %s (nemojte koristiti %s prefiks u putanjama montiranja). Uređaj Nemojte montirati virtualne uređaje poput  /dev, /proc, /sys, etc na %s/. Nemoj instalirati Grub Dobro provjerite da je %s/etc/fstab ispravan, da odgovara onome što je potrebno vašem sustavu za prvo pokretanje i da odgovara onome što je trenutno montirano na %s. Tijekom instalacije, imat ćete određeno vrijeme za chroot u %s i instalaciju bilo kojeg paketa koji će vam biti potreban za podizanje vašeg novog sustava. Tijekom instalacije, biti će zahtijevano od vas da prilagodite vlastitu /etc/fstab datoteku. Uredi particiju Enkripcija Enkriptiraj {} i formatiraj kao {} Enkriptiranje %(partition)s ... Enkripcija Enkripcijska lozinka Enkripcija će obrisati sve podatke s {}

Jeste li sigurni da želite nastaviti? Ulazak u sistem ... Greška Proširena particija Radnje datotečnog sustava Formatiraj kao Formatiraj {} kao {} Formatiranje %(partition)s kao %(format)s Naprijed Slobodan prostor Grub Grub instalacija Grub nije konfiguriran Naziv računala Naziv računala:  Ako omogućite, zaslon za prijavu se preskače kada se sustav pokreće i prijavljeni ste na radnu površinu automatski. Ako niste sigurni što ovo znači, molimo vratite se nazad i odznačite ručno administriranje particija. Instaliraj Instaliraj Grub na {} Instalirajte dodatne lokalizirane pakete Instalirajte bilo koji paket koji vam je potreban za prvo pokretanje sustava (mdadm, cryptsetup, dmraid, itd.) naredbom "sudo chroot %s" slijeđenu odgovarajućom apt-get/aptitude instalacijom. Instaliraj operativni sustav Alat za instaliranje Greška instalacije Instalacija završena Instalacija je sada završena. Želite li ponovno pokrenuti vaše računalo kako bi koristili novi sustav? Instalacija je sada pauzirana. Pažljivo pročitajte upute na stranici prije nego kliknite 'Naprijed' za završetak instalacije. Instalacijaje pauzirana: molimo završite prilagođenu instalaciju Instalacija pauzirana Instaliranje EFI paketa Instalacija učitača podizanja sustava Instaliranje drivera Instaliranje {}... Raspored tipkovnice Raspodred tipkovnice:  Oznaka Oznaka (neobavezno) Jezik Jezik:  Raspored Instaler uživo Lokalizacija Lokaliziraj AbiWord Lokaliziraj Firefox Lokaliziraj KDE Lokaliziraj LibreOffice Lokaliziraj Thunderbird Lokalizacija paketa Logiraj se automatski kod podizanja sustava Logička particija Način Točka montiranja Montiraj {}{} kao {} Montiranje %(partition)s na %(mountpoint)s Nema internet konekcije Nije montirano Imajte na umu da bi 'update-initramfs' radio ispravno u nekim slučajevima (poput dm-crypt), možda biste trebali imati uređaj trenutno montiran koristeći isti naziv bloka uređaja kao i u datoteci %s/etc/fstab. Pregled Particioniranje Lozinka za kriptirane paricije Molimo učinite sljedeće i tada kliknite Dalje za dovršetak instalacije: Molimo unesite lozinku dva puta da osigurate točnost Molimo označite sustav datoteka za formatiranje root (/) particije prije nastavka. Jeste li sigurni da želite administrirati particije ručno? Molimo unesite ime računala. Molimo unesite lozinku za svoj korisnički račun. Molimo unesite korisničko ime. Molimo unesite svoje puno ime. Prekid Prekid? Vaše ime:  Osvježi Premjestiv Uklanjanje VirtualBox Uklanjanje live podešavanja (paketi) Uklanjanje os-prober Označi fotografiju Odaberite vremensku zonu Odabrana vremenska zona: Postavljanje naziva računala Postavljanje mogućnosti tipkovnice Postavljanje lokalizacije Veličina Nešto nije u redu s medijem za instalaciju! Ovo se najčešće događa zbog alata za zapisivanje na medije koji nisu u skladu s {}. Molimo zapišite ISO sliku na DVD/USB pomoću drugog alata. Sažetak Postavke sustava Snimi fotografiju Fotografiraj se EFI particija je premala. Mora imati najmanje 100 MB. EFI particija mora biti formatirana u vfat datotečnom sustavu. Grub učitač sustava nije ispravno konfiguriran! Morate ga konfigurirati ručno. Ime računala je pogrešno:
ne smije sadržavati više od 63 znaka između točaka
i ne više od 255 znakova ukupno. Ovaj naziv računala biti će naziv računala na mreži. To je ime koje ćete koristiti za logiranje na vaše računalo Ova slika predstavlja vaš korisnički račun. Koristi se na zaslonu prijave i na par drugih mjesta. Ovo će biti prikazano u aplikaciji 'O meni'. Vremenska zona Vremenska zona:  Vrsta Nije moguće snimiti fotografiju. Nepoznato Isključivanje particije Ažuriranje apt priručne memorije Ažuriranje novog sistema Koristi već montirano %s. Koristite ovaj okvir za testiranje rasporeda tipkovnice. Informacije o korisniku Korisničke postavke Korisničko ime:  Inačica Provjerite je li fstab ispravan (koristite blkid za provjeru UUIDs). Zapisivanje informacije montiranja datotečnog sustava u /ect/fstab Vi ste izabrali da NE instalirate GRUB na vašem sustavu.
Bez bootloadera kao Grub vaš sustav se ne može dignuti.

Jeste li sigurni da želite nastaviti? Odabrali ste enkriptirati root particiju

Trebate mountati /boot na odvojenu nekriptiranu particiju (500 MB).
Bez nekriptirane /boot particije sistem neće biti bootabilan.

Enkripcija će izbrisati sve podatke s {}

Jeste li sigurni da želite nastaviti? Odabrali ste instalirati grub na particiju.
Preporučuje se instalirati GRUB na disku, umjesto particije.

Nastaviti samo ako ste sigurni da imate još jedan bootloader već instaliran.

Jeste li sigurni da želite nastaviti? Odabrali ste ručno upravljanje particijama, ova značajka je samo za NAPREDNE KORISNIKE. Prvo morate ručno montirati svoj ciljani datotečni sustav(e) na %s za napraviti prilagođenu instalaciju! Morate odabrati vrstu formata
za svoje enkriptirane particije (zadano: ext4): Morate odabrati točku montiranja za particiju: Vaše puno ime Vaša lozinka Vaša lozinka ne odgovara. Vaša slika Vaše korisničko ime Vaše korisničko ime ne može početi s brojem. _Uredi particije _Ekspertni mod Isključeno Omogućeno Postavi boot zastavicu {} Instaler 