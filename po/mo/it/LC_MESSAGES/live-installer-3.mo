��    �      �  �   �
      �  *   �  &   �  J   �  �   >     �     �  (  �       ,        K     W     k     {     �     �     �  @   �       �        �     �     �     �     �            �   !     �  C   �     $  �   8  �   �  F   N     �     �     �     �  
   �     �  J        O     g     m     �  	   �     �  *   �     �  
   �     �     �             
     {   (  c   �            %   #  �   I     �          %     8  Y   N  �   �  =   +     i     }     �     �     �     �     �     �     �       
             &     5     B     U     h     w     �     �  #   �     �     �     �       (        ;     R  �   ^     (     1  %   >  F   d  9   �  U   �  7   ;     s  0   �  '   �     �         !     *      /      5      A   
   I      T   &   h      �      �      �      �      �      �      �      !  �   !     �!     �!     �!     �!  :   �!  ,   8"  S   e"  n   �"  9   (#  9   b#  a   �#  /   �#     .$  
   7$     B$     G$     d$     |$     �$     �$     �$     �$  *   �$  	   %     %  
   %     '%  <   /%  2   l%  �   �%  
  ,&  �   7'  ^   (  U   ~(  N   �(  /   #)     S)     b)     p)     �)     �)  (   �)     �)     �)     �)     �)      *     *  �  *  /   �+  .   �+     ),  �   >,      �,     �,  ?  -     A.  +   I.     u.     �.     �.     �.     �.     �.     �.  A   �.  !   0/  �   R/     	0     "0     10     L0     j0     �0     �0  �   �0     [1  D   g1     �1  �   �1  �   m2  G   3     P3  	   d3     n3     �3  	   �3     �3  H   �3     4     ,4     34     E4     _4     m4  0   �4     �4     �4     �4     �4     �4     �4     �4  �   5  �   �5     6     6  6   (6  �   _6     $7     B7     ]7     u7  [   �7  �   �7  O   o8     �8     �8     �8  !   9     59     U9     k9  	   �9     �9     �9     �9     �9     �9     �9     �9     �9     :     *:     H:     f:  &   :     �:     �:     �:     �:  (   �:     ;     (;  �   4;  
   <     <  /   !<  ]   Q<  >   �<  \   �<  2   K=     ~=  8   �=  $   �=     �=     >  
  *>     5?     :?     B?     N?     k?     ~?  /   �?     �?     �?     �?     	@     @  )   8@  !   b@  
   �@  �   �@  	   sA     }A     �A     �A  A   �A  1   �A  d   ,B  h   �B  5   �B  9   0C  f   jC  /   �C     D     D     D  ,    D     MD     lD     xD     �D     �D     �D  G   �D     (E     <E     PE     ^E  C   gE  8   �E  �   �E    }F  �   �G  _   �H  ]   �H  [   BI  @   �I     �I     �I  &   J     +J     7J  5   JJ     �J     �J     �J     �J     �J      �J     �       s       �   �   8   #   r   �   /   ?   Q   �   '   x      �   <         l   t       6   �         �   �       D          �   Z   T   h      �           �   0   �   �          �       �   �      5       B   9   �       K   Y   }   {       �           p       >      C   w       �      .         v   �   H       f         m       d               1   [   �   X   z          �   O   q       �   "      	   N   �   G   S      L   a   \   ~   V              |   i   j   e   �   7       �   E       _       y      @           �   M               2       �   F   b   n   U           $   R   c   u   �   `      +   �   g   (   �   ^   �   -   �          k   �          �          ]   =   �       !       �      4   &   �                  *       W          3   �   
   ,               P   ;   o       %   I       :          �   �   )          J       �   �   �       A   �                   �        <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> A chrooted terminal and fstab will be opened after you close this message. A root partition is needed to install the system.

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

Are you sure you want to continue? Entering the system ... Error Extended partition Filesystem operations Format as Format {} as {} Formatting %(partition)s as %(format)s ... Forward Free space Grub Grub install Grub not configured Hostname Hostname:  If enabled, the login screen is skipped when the system starts, and you are signed into your desktop session automatically. If you aren't sure what any of this means, please go back and deselect manual partition management. Install Install Grub on {} Install additional localized packages Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot %s" followed by the relevant apt-get/aptitude installations. Install the operating system Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation. Installation is paused: please finish the custom installation Installation paused Installing EFI packages... Installing bootloader Installing drivers Installing {}... Keyboard layout Keyboard layout:  Label Label (optional) Language Language:  Layout Live Installer Localization Localizing AbiWord Localizing Firefox Localizing KDE Localizing LibreOffice Localizing Thunderbird Localizing packages Log in automatically on system boot Logical partition Model Mount point Mount {}{} as {} Mounting %(partition)s on %(mountpoint)s No internet connection Not mounted Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in %s/etc/fstab. Overview Partitioning Password for the encrypted partition: Please do the following and then click Forward to finish installation: Please enter your password twice to ensure it is correct. Please indicate a filesystem to format the root (/) partition with before proceeding. Please make sure you wish to manage partitions manually Please provide a hostname. Please provide a password for your user account. Please provide a username without -oem. Please provide a username. Please provide your full name. Please, click on the network manager's system tray icon to connect to the internet before you continue.

You can still install %s without an internet connection.
Without an internet connection your system will not be upgraded and some packages cannot be localized. Quit Quit? Real name:  Refresh Removable: Removing VirtualBox Removing live configuration (packages) Removing os-prober Select image Select timezone Selected timezone: Setting hostname Setting keyboard options Setting locale Size Something is wrong with the installation medium! This is usually caused by burning tools which are not compatible with {}. Please burn the ISO image to DVD/USB using a different tool. Summary System settings Take a photo Take a photo... The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. The grub bootloader was not configured properly! You need to configure it manually. The hostname is incorrect:
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
for your encrypted partition (default: ext4): You need to choose a mount point for partition: Your full name Your password Your passwords do not match. Your picture Your username Your username cannot start with a digit. _Edit partitions _Expert mode disabled enabled set boot flag {} Installer Project-Id-Version: live-installer-3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-04-05 14:13+0200
PO-Revision-Date: 2016-04-05 09:29+0000
Last-Translator: Arjen Balfoort <schoelje@solydxk.com>
Language-Team: Italian (http://www.transifex.com/solydxk/live-installer-3/language/it/)
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 <b>Per favore scegli una partizione di root</b> <b>Per favore seleziona una partizione EFI</b> Seleziona l'immagine Una partizione di root è necessaria per installare il sistema.

- Punto di montaggio: /
- Spazio raccomandato: 30GB
- Filesystem raccomandato: ext4
 Aggiunta nuovo utente al sistema Avanzate... E' necessaria una partizione EFI di sistema con i seguenti requisiti:

 - Punto di mount: /boot/efi
 - Flag partizione: Avviabile
 - Dimensione: Maggiore di 100MB
 - Formato: vfat o fat32

Per assicurare la compatibilità con Windows raccomandiamo di usare la prima partizione del disco come partizione EFI di sistema
  Applica Vuoi uscire dal programma di installazione? Assegnato a / Assegna a /boot/efi Assegnato a /home Login automatico Login automatico: Indietro Filesystem non esistente Prima di continuare, per favore monta il filesystem target in %s. Sfoglia per cercare altre foto... Impossibile scaricare ed installare i pacchetti addizionali per la localizzazione: nessuna connessione a internet
La configurazione sarà comunque impostata nella lingua selezionata. Controllo del bootloader Pulizia di APT Clic per cambiare immagine Configurazione del bootloader Configurazione sensori Copia in corso Stato Creare le voci in %s/etc/fstab per il filesystem dato che saranno montate nel nuovo sistema, in accordo con quelle attualmente inserite in %s (senza usare il prefisso %s nel percorso di montaggio) Dispositivi NON montare periferiche virtuali come /dev, /proc, /sys, ecc. in %s/ Non installare Grub Controlla attentamente che il tuo %s/etc/fstab sia corretto, che corrisponda a quello che il tuo sistema avrà al primo avvio, e che corrisponda a ciò che è montato in %s Durante l'installazione ti sarà dato il tempo di fare chroot in %s e installare i pacchetti che potrebbero essere necessari per avviare il nuovo sistema. Durante l'installazione ti sarà chiesto di scrivere il tuo /etc/fstab. Modifica partizione Cifratura Cifra {} e formatta come {} Cifratura di %(partition)s ... Cifratura Password per la cifratura La cifratura eliminerà ogni dato da {}

Sei sicuro di voler continuare? Accesso al sistema... Errore Partizione estesa Operazioni sul filesystem Formatta come Formatta {} come {} Formattazione di %(partition)s in %(format)s ... Avanti Spazio libero Grub Installa Grub Grub non configurato Hostname Nome dell'host: Se abilitato, all'avvio del sistema la schermata di login verrà saltata e verrà avviata la sessione di lavoro automaticamente. Se non sei sicuro cosa significhino questi termini, per favore torna indietro e deseleziona la gestione manuale delle partizioni. Installa Installa Grub su {} Installare pacchetti addizionali per la localizzazione Installa i pacchetti che potrebbero essere necessari per il primo avvio (mdadm, cryptsetup, dmraid, ecc.) eseguendo "sudo chroot %s" seguito dalle corrispondenti installazioni con apt-get/aptitude Installa il Sistema Operativo Strumento di installazione Errore di installazione Installazione terminata L'installazione è stata completata. Vuoi riavviare il computer per usare il nuovo sistema? L'installazione è in pausa. Per favore leggi attentamente le istruzioni sulla pagina e clicca Avanti per completare l'installazione. L'installazione è in pausa: per favore completa l'installazione personalizzata Installazione in pausa Installazione dei pacchetti EFI Installazione del bootloader Installazione dei driver in corso Installazione di {} in corso... Layout della tastiera Layout della tastiera:  Etichetta Etichetta (opzionale) Lingua Lingua:  configurazione Live installer Localizzazione Localizzazione di AbiWord Localizzazione di Firefox Localizzazione di KDE Localizzazione di LibreOffice Localizzazione di Thunderbird Localizzazione pacchetti Login automatico all'avvio del sistema Partizione logica Modello Punto di mount Monta {}{} come {} Mount di %(partition)s in %(mountpoint)s Nessuna connessione internet Non montato Notare che per eseguire update-initramfs correttamente in alcuni casi (come dm-crypt) potrebbe essere necessario avere i dispositivi attualmente montati con lo stesso block device name presente in %s/etc/fstab panoramica Partizionamento Inserire la password per la partizione cifrata: Per favore completa le seguenti azioni e poi clicca su Avanti per completare l'installazione: Inserisci la password due volte per assicurarne la correttezza Indica il filesystem da utilizzare per formattare la partizione root (/) prima di procedere. Sicuro di voler gestire manualmente le partizioni? Inserisci il nome dell'host Inserisci una password per l'account del tuo nome utente Inserisci un nome utente senza -oem. Inserisci un nome utente Inserisci nome e cognome Prego, clicca sull'icona del gestore di rete nel pannello per connettersi ad internet prima di continuare

Puoi anche installare %s senza connessione internet.
Senza connessione il tuo sistema non sarà aggiornato ed alcuni pacchetti non potranno essere localizzati. Esci Uscire? Nome reale: Scaricamento informazioni... Unità rimovibile: Rimozione VirtualBox Rimozione della configurazione live (pacchetti) Rimozione di os-prober Seleziona un'immagine Seleziona il fuso orario Fuso orario scelto: Impostazione dell'hostname Impostazione delle opzioni della tastiera Impostazione della localizzazione Dimensione Qualcosa è andato storto con il supporto di installazione! In genere a causa di strumenti di copia o masterizzazione non compatibili con {}. Si consiglia di trasferire l'immagine ISO su DVD/USB usando uno strumento differente. Riepilogo Impostazioni di sistema Scatta una foto Scatta una foto... La partizione EFI è troppo piccola, deve essere almeno di 100MB. La partizione EFI deve essere formattata in vfat. Il bootloader grub non è stato configurato correttamente! È necessaria una configurazione manuale. Hostname non corretto:
non immettere più di 63 caratteri a frase
e non più di 255 caratteri in totale. Questo hostname sarà il nome del computer nella rete Questo è il nome che userai per accedere al tuo computer Questa immagine rappresenta il tuo account. È usata nella schermata d'accesso e in alcuni altri casi. Questo sarà visto nell'applicazione "About Me" Fuso orario Fuso orario:  Tipo Non è stato possibile convertire l'immagine Impossibile scattare una foto. Sconosciuto Smontaggio partizioni Aggiorna la cache di apt Aggiorna il nuovo sistema Utilizzare already-mounted %s. Usa questo riquadro per verificare la configurazione della tua tastiera Informazioni utente Impostazioni utente Nome utente:  Variante Verifica che fstab è corretto (usa blkid per controllare gli UUID) Scrittura delle informazioni di montaggio del filesystem Si è scelto di NON installare Grub in questo sistema.
Senza un bootloader come Grub il sistema potrebbe non avviarsi.

Si è sicuri di voler procedere? È stato scelto di cifrare la partizione root

Sarà necessario montare /boot in una partizione separata e non cifrata (500 MB).
Senza una partizione /boot non cifrata non sarà possibile avviare il sistema.

La cifratura eliminerà ogni dato da {}

Sei sicuro di voler continuare? Si è scelto di installare Grub su una partizione.
Si raccomanda di installare Grub su un disco invece che su una partizione.

Continuare solo se si è certi di avere già un altro bootloader installato.

Sei sicuro di voler continuare? Hai selezionato di gestire manualmente le partizioni, questa opzione è SOLO per UTENTI ESPERTI Devi prima montare il/i filesystem di destinazione in %s per un'installazione personalizzata! È necessario scegliere un tipo di formattazione
per la partizione cifrata (default: ext4): È necessario scegliere un punto di montaggio per la partizione: Il tuo nome completo La tua password Le password inserite non corrispondono La tua foto Il tuo nome utente Il nome dell'utente non può cominciare con un numero _Modifica partizioni _Modalità avanzate disattivato attivato Imposta flag di avvio Programma di installazione di {} 