��    �      <  �   \
      �  *   �  &     �   +     �     �  (  �       ,        8     D     X     h     x     �  E   �     �     �  �        �     �     �     �     �               ,     4  �   <       H   
     S  �   g  �     F   �     �     �     �       
   #     .  J   B     �     �     �     �     �  	   �     �  *        -  
   5     @     E     R  
   [  {   f  c   �     F     N  %   a  �   �     9     V     h     {  Y   �  �   �  =   n     �     �     �     �     �     
          "     3  
   <     G     N     ]     j     }     �     �     �     �  #   �                    )  (   :     c  �   z  �   4            %     F   ?  9   �  U   �  7        N  0   i     �     �  -   �                      
   !     ,  &   @     g     w     �     �     �     �  �   �     �      �      �   :   �   ,   �   S   !  n   d!  9   �!  9   "  a   G"  /   �"     �"  
   �"     �"     �"     �"     #  *   (#  	   S#     ]#  
   k#     v#  2   ~#  �   �#  
  >$  �   I%  ^   1&  N   �&  /   �&     '     '     ,'     I'     V'  (   d'     �'     �'     �'     �'     �'     �'  �  �'  0   �)  +   �)  �   �)  +   s*     �*  5  �*     �+  +   �+     ,     $,     :,     I,     `,     x,  L   �,  #   �,  "   �,  �   -  !   �-     �-     �-     .  '   /.     W.     t.     �.     �.  �   �.     �/  K   �/     �/  �   �/  �   �0  X   31     �1     �1  )   �1      �1     �1     2  d   '2     �2     �2     �2     �2     �2     �2     �2  +   3     ;3     B3     W3     \3     n3     w3  q   �3  r   �3     i4     v4  ,   �4  �   �4     �5     �5     �5     �5  i   �5  m   V6  Q   �6     7  &   ,7     S7     n7     �7     �7     �7     �7     �7  	   �7     �7     �7     �7     �7     8     !8     18     J8     b8  $   v8     �8     �8     �8     �8  0   �8     9  �   %9  �   �9  
   �:     �:  ,   �:  h   �:  B   [;  U   �;  9   �;  +   .<  3   Z<  #   �<     �<  >   �<     =     =     =  	   /=     9=     E=  )   ^=     �=     �=     �=     �=  ,   �=     >  �    >     �>     �>     ?  B   ?  2   `?  [   �?  �   �?  <   {@  6   �@  r   �@  5   bA     �A  
   �A     �A  	   �A     �A  (   �A  9   �A     8B     LB     bB     qB  D   zB  �   �B  6  jC    �D  z   �E  [   F  >   zF     �F     �F  '   �F     G     G  4    G     UG     lG     {G     �G  (   �G     �G     ;           �   I      ,      L       ^           �   �   .   �                 R   Z      %   T   \   H           X       Y   n   ~                C      �   #              �   2   -                 s       _   F   6   >   K   j       /          (   G       �   �   g   �   *          }          �   �   J   [      u   M   O      �   �       m   �   k   �   <      +   �   �   v           �          
   d          @   a   z       0   �   l       �   �   `   U   S   �   9   h   N       1       3       {       �   i               �       W   ]   "   �   �         8      �   r           �              x       f   o           B       �   P   A       �   �                     �   q       4   5   E               :   c   p   Q   w      |   �   �   �   =   �       '   	   y   ?   b   D   $   7   e                   )      !      t   &           �       V    <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> A root partition is needed to install the system.

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

Are you sure you want to continue? Encryption/password Entering the system ... Error Extended partition Filesystem operations Format as Format {} as {} Formatting %(partition)s as %(format)s ... Forward Free space Grub Grub install Hostname Hostname:  If enabled, the login screen is skipped when the system starts, and you are signed into your desktop session automatically. If you aren't sure what any of this means, please go back and deselect manual partition management. Install Install Grub on {} Install additional localized packages Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Install the operating system Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation. Installation is paused: please finish the custom installation Installation paused Installing bootloader Installing drivers Installing {}... Keyboard layout Keyboard layout:  Label Label (optional) Language Language:  Layout Live Installer Localization Localizing AbiWord Localizing Firefox Localizing KDE Localizing LibreOffice Localizing Thunderbird Localizing packages Log in automatically on system boot Logical partition Model Mount point Mount {}{} as {} Mounting %(partition)s on %(mountpoint)s No internet connection No partition table was found on the hard drive: {disk_description}. Do you want the installer to create a set of partitions for you? Note: This will ERASE ALL DATA present on this disk. Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Password for the encrypted partition: Please do the following and then click Forward to finish installation: Please enter your password twice to ensure it is correct. Please indicate a filesystem to format the root (/) partition with before proceeding. Please make sure you wish to manage partitions manually Please provide a hostname. Please provide a password for your user account. Please provide a username. Please provide your full name. Provide an encryption password for partition: Quit Quit? Real name:  Refresh Removable: Removing VirtualBox Removing live configuration (packages) Select timezone Selected timezone: Setting hostname Setting keyboard options Setting locale Size Something is wrong with the installation medium! This is usually caused by burning tools which are not compatible with {}. Please burn the ISO image to DVD/USB using a different tool. Summary System settings Take a photo... The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. The grub bootloader was not configured properly! You need to configure it manually. The hostname is incorrect:
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
POT-Creation-Date: 2016-01-19 15:39+0100
PO-Revision-Date: 2016-01-19 14:36+0000
Last-Translator: Arjen Balfoort <schoelje@solydxk.com>
Language-Team: German (http://www.transifex.com/solydxk/live-installer-3/language/de/)
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 <b>Bitte eine Root-Partition (/) auswählen.</b> <b>Bitte eine EFI-Partition auswählen.</b> Eine Root-Partition ist nötig zum installieren des Systems.

 - Einhängepunkt: /
 - Empfohlene Größe: 30GB
 - Empfohlenes Dateisystem: ext4
 Füge dem System einen neuen Benutzer hinzu Erweitert ... Es ist eine wie folgt angelegte EFI-Systempartition notwendig:

 - Einhängepunkt: /boot/efi
 - Partitionsmarkierungen: startfähig
 - Größe: größer als 100 MB
 - Format: vfat oder fat32

Die Verwendung der ersten Partition der Festplatte als EFI-Systempartition sichert die Kompatibilität mit Windows.
  Anwenden Soll der Installer wirklich beendet werden? /  zuweisen Zuweisen zu /boot/efi /home zuweisen Automatische Anmeldung Automatische Anmeldung: Zurück Hängen Sie bitte Ihr Zieldateisystem bei /target ein, bevor Sie fortfahren. Suchen Sie nach weiteren Bildern... Datei-Indices werden berechnet ... Zusätzliche Sprachpakete können nicht heruntergeladen und instlliert werden: fehlende Internetverbindung
Die gewählte Sprache wird im System aber trotzdem eingestellt. Prüfe Systemstarter (bootloader) APT wird bereinigt Klicken, um Ihr Bild zu ändern Plymouth wird konfiguriert Konfiguriere Systemstarter (bootloader)  initramfs wird konfiguriert Sensoren werden konfiguriert Kopiere Land /target/etc/fstab für die Dateisysteme erstellen, wie sie im neuen System eingehängt werden sollen, entsprechend den aktuell unter /target eingehängten Dateisystemen (ohne das /target-Präfix im Einhängepfad zu übernehmen). Gerät Virtuelle Geräte wie /dev, /proc, /sys, usw. NICHT an /target/ einhängen. Grub nicht installieren Prüfen Sie nochmals, dass die /target/etc/fstab mit der derzeitigen Konfiguration unter /target und Ihrer Konfiguration des neuen Systems übereinstimmt. Während des installationsvorgangs wird es möglich sein, mit chroot in /target zu wechseln und zusätzliche, zum Starten des Systems notwendige, Pakete zu installieren. Während der Installation, werden Sie aufgefordert, Ihre eigene /etc/fstab zu schreiben. Partition bearbeiten Verschlüsseln Veschlüssele {} und formatiere es als {} Verschlüssele %(partition)s ... Verschlüsselung Verschlüsselungs-Passwort Eine Verschlüsselung wird alle Daten von {} löschen.

Sind Sie sicher, dass Sie fortfahren wollen? Verschlüsselung/Passwort Lade das System ... Fehler Erweiterte Partition Dateisystemzugriffe Formatieren als Formatiere {} als {} Formatiere %(partition)s als %(format)s ... Weiter Freier Speicherplatz Grub Grub Installation Hostname Systemname:  Wenn aktiviert, wird der Login-Bildschirm beim Systemstart übersprungen und der Benutzer automatisch angemeldet. Wenn Sie diese Anweisungen nicht verstehen, kehren Sie bitte zurück und versuchen keine manuelle Partitionierung. Installieren Installiere Grub auf {} Installiere zusätzliche lokalisierte Pakete Installiere alle für den ersten Start benötigten Pakete (mdadm, cryptsetup, dmraid, usw.) durch den Aufruf von »sudo chroot /target«, gefolgt von den relevanten apt-get/aptitude Installationen. Installiere das Betriebssystem Installationsroutine Fehler bei der Installation Installation abgeschlossen Die Installation ist abgeschlossen. Möchten Sie den Rechner neu starten, um das neue System zu benutzen? Installation pausiert. Bitte die Anweisungen sorgfältig lesen und erst dann mit der installation fortfahren. Die Installation pausiert: Bitte erst die benutzerdefinierte installation beenden Installation pausiert Installiere Systemstarter (bootloader) Treiber werden installiert Installiere {}... Tastaturbelegung Tastaturbelegung:  Bezeichnung Label (optional) Sprache Sprache:  Belegung Live Installer Lokalisierung Lokalisiere Abiword Lokalisiere Firefox Lokalisiere KDE Lokalisiere Libre Office Lokalisiere Thunderbird Pakete lokalisieren Automatischer Login beim Systemstart Logische Partition Modell Einhängepunkt Hänge {}{} als {} ein %(partition)s wird in %(mountpoint)s eingehängt Keine Internetverbindung Keine Partitionstabelle gefunden auf dieser Festplatte: {disk_description}. Soll der Installer Partitionen einrichten? Warnung: Dies wird ALLE DATEN auf dieser Festplatte  LÖSCHEN. Achtung: Manchmal (z.B. bei dm-crypt) müssen momentan eingehängte Laufwerke denselben Block-Device-Name verwenden, mit dem sie in /target/etc/fstab auftauchen, damit update-initramfs korrekt funktioniert. Übersicht Partitionierung Passwort für die verschlüsselte Partition: Bitte die folgenden Schritte durchführen und dann "Weiter" wählen, um die Installation abzuschließen. Bitte das Passwort zweimal eingeben damit es wirklich korrekt ist. Bitte das Dateisystem angeben, mit dem die Partition root (/) formatiert werden soll. Sollen die Partitionen wirklich manuell bearbeitet werden Bitte einen Namen für das System eingeben. Bitte das Passwort für Ihr Benutzerkonto eingeben. Bitte einen Benutzernamen eingeben. Bitte Ihren Namen eingeben. Geben Sie ein Verschlüsselungspasswort für die Partition an: Beenden Beenden? Wirklicher Name  Neu laden Entfernbar: VirtualBox wird entfernt Live-Konfiguration wird entfernt (Pakete) Zeitzone auswählen Ausgewählte Zeitzone: Systemname wird gesetzt Tastaturoptionen werden gesetzt Lokale Einstellungen (locale) werden gesetzt Größe Das Installationsmedium funktioniert nicht! Dies wird üblicherweise von mit {} nicht kompatiblen Brennprogrammen verursacht. Bitte das ISO Image mit einem anderen Programm auf DVD/USB brennen. Zusammenfassung Systemeinstellungen Machen Sie ein Foto... Die EFI-Partition ist zu klein. Es müssen mindestens 100 MB sein. Die EFI-Partition muss als vfat formatiert werden. Systemstarter (bootloader) GRUB ist nicht richtig konfiguriert! Dies muß manuell erfolgen. Der Systemname ist nicht korrekt:
Er darf nicht mehr als 63 Zeichen zwischen den Punkten
und nicht mehr als 255 Zeichen insgesamt umfassen. Der Systemname wird der Name des Computers im Netzwerk sein. Mit diesem Namen werden Sie sich am Computer anmelden. Dieses Bild repräsentiert Ihr Benutzerkonto. Es wird im Anmeldebildschirm und an einigen anderen Orten verwendet. Dies wird in der About Me-Anwendung angezeigt werden. Zeitzone Zeitzone:  Typ Unbekannt Apt Cache wird neu geladen Bereits eingehängtes /target benutzen.  Dieses Feld benutzen, um die Tastatur-Belegung zu testen. Benutzerinformation Benutzereinstellungen Benutzername:  Variante Schreibe Informationen zum Einhängen des Dateisystems in /etc/fstab Sie wollen Grub NICHT auf Ihrem System installieren.
Ohne einen Systemstarter wie Grub kann Ihr System evtl. nicht starten..

Sind Sie sicher, dass Sie fortfahren wollen? Die Root-Partition soll verschlüsselt werden.

/boot muß auf einer anderen, unverschlüsselten Partition (500 MB) eingehängt werden.
Ohne eine unverschlüsselte /boot-Partition kann das System nicht starten.

Die Verschlüsselung wird alle Daten von {} löschen

Sind Sie sicher, dass Sie fortfahren wollen? Sie wollen Grub auf einer Partition installieren.
Es wird empfohlen, Grub lieber auf einer Platte zu installieren.

Bitte fahren Sie nur fort, wenn ein anderer Systemstarter (bootloader) bereits installiert ist.

Sind Sie sicher, dass Sie fortfahren wollen? Sie haben ausgewählt, dass Sie Ihre Partitionen manuell verwalten. Diese Funktion ist NUR FÜR FORTGESCHRITTENE BENUTZER. Sie müssen ein Dateiformat
für die verschlüsselte Partition auswählen (Standard: ext4): Sie müssen einen Einhängepunkt für die Partiton auswählen: Ihr vollständiger Name Ihr Passwort Die Passwörter stimmen nicht überein. Ihr Bild Ihr Benutzername Ihr Benutzername kann nicht mit einer Zahl beginnen. _Partitionen editieren _Expertenmodus ausgeschaltet eingeschaltet Systemstartmarkierung (boot flag) setzen {} Installer 