��    �      �  �   ,      �  *   �  &     J   ;  �   �          +  (  7     `  ,   f     �     �     �     �     �     �     �  @   	     J  �   f     �               .     E     Y     a  �   i     !  C   (     l  �   �  �     F   �     �     �     �       
   -     8  J   L     �     �     �     �  	   �     �  *   �     #  
   +     6     ;     H     \  
   e  {   p  c   �     P     X  %   k  �   �     >     [     m     �  Y   �  �   �  =   s     �     �     �     �     	          *     <     B     S  
   \     g     n     }     �     �     �     �     �     �  #        %     7     =     I  (   Z     �     �     �  �   �     �     �  %   �  F   �  9     U   ?  7   �     �  0   �  '        A     \    {     �      �      �      �   
   �      �   &   �      �      �      	!     !     ,!     =!     V!     e!     t!  �   y!     1"     9"     I"     V"  :   f"  ,   �"  S   �"  n   "#  9   �#  9   �#  a   $  /   g$     �$  
   �$     �$     �$     �$     �$     �$     %     %     *%  *   B%  	   m%     w%  
   �%     �%  <   �%  2   �%  �   &  
  �&  �   �'  ^   �(  U   �(  N   =)  /   �)     �)     �)     �)     �)     *  (   *     :*     K*     X*     a*     i*     w*     �*  �  �*  0   ?,  +   p,  U   �,  �   �,  +   �-     �-  5  �-     �.  +   �.     +/     7/     M/     \/     s/     �/  '   �/  G   �/  #   0  �   '0  !   �0     �0     1  '   '1     O1     l1     t1  �   y1     O2  F   V2     �2  �   �2  �   F3  X   �3     D4     Y4  )   h4      �4     �4     �4  d   �4     D5     X5     _5     t5     �5     �5  +   �5     �5     �5     �5     �5     6     )6     26  q   ?6  r   �6     $7     17  ,   I7  �   v7     78     V8     k8     �8  i   �8  m   9  Q   z9     �9     �9  &   :     (:     C:     U:     f:     y:     �:     �:  	   �:     �:     �:     �:     �:     �:     �:     ;     ;     7;  $   K;     p;     �;     �;     �;  0   �;     �;     �;     <  �   %<  
   �<     �<  ,   
=  h   7=  B   �=  U   �=  9   9>  +   s>  3   �>  ,   �>  #    ?     $?    @?  
   X@     c@     l@  	   }@     �@     �@  )   �@     �@     �@     A     A     3A     KA  ,   kA     �A     �A  �   �A     xB     �B     �B     �B  B   �B  2   C  [   7C  �   �C  <   D  6   \D  r   �D  5   E     <E  
   EE     PE  '   TE     |E  	   �E  $   �E     �E  "   �E  #   F  9   ,F     fF     zF     �F     �F  J   �F  D   �F  �   8G  6  �G    I  z   J  t   �J  [   K  >   hK     �K     �K  '   �K     �K     �K  4   L     CL     ZL     iL     wL  (   �L     �L     �L     J   f       I   p   �   `       D   K   �   �   e   v   X   �      Y   S              �                     {   �       �   �   Q                     o       �   w   %       +   d       �      _   g   �   &      0              �   �           s   "   W           �       :   V   ;   t                                 ]             *   8   E   (       1       C   u   7               }   /   �   h   �   #   j           N   )   ^       �   L       �   �   a   Z   �       �   l      \          P      R   
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
Language-Team: German (http://www.transifex.com/solydxk/live-installer-3/language/de/)
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 <b>Bitte eine Root-Partition (/) auswählen.</b> <b>Bitte eine EFI-Partition auswählen.</b> Ein chroot-Terminal und fstab werden nach dem Schließen dieser Mitteilung geöffnet. Eine Root-Partition ist nötig zum installieren des Systems.

 - Einhängepunkt: /
 - Empfohlene Größe: 30GB
 - Empfohlenes Dateisystem: ext4
 Füge dem System einen neuen Benutzer hinzu Erweitert ... Es ist eine wie folgt angelegte EFI-Systempartition notwendig:

 - Einhängepunkt: /boot/efi
 - Partitionsmarkierungen: startfähig
 - Größe: größer als 100 MB
 - Format: vfat oder fat32

Die Verwendung der ersten Partition der Festplatte als EFI-Systempartition sichert die Kompatibilität mit Windows.
  Übernehmen Soll der Installer wirklich beendet werden? /  zuweisen Zuweisen zu /boot/efi /home zuweisen Automatische Anmeldung Automatische Anmeldung: Zurück Das Basis-Dateisystem exisitiert nicht. Hängen Sie bitte Ihr Zieldateisystem bei %s ein, bevor Sie fortfahren. Suchen Sie nach weiteren Bildern... Zusätzliche Sprachpakete können nicht heruntergeladen und instlliert werden: fehlende Internetverbindung
Die gewählte Sprache wird im System aber trotzdem eingestellt. Prüfe Systemstarter (bootloader) APT wird bereinigt Klicken, um Ihr Bild zu ändern Konfiguriere Systemstarter (bootloader) Sensoren werden konfiguriert Kopiere Land %s/etc/fstab für die Dateisysteme erstellen, wie sie im neuen System eingehängt werden sollen, entsprechend den aktuell unter %s eingehängten Dateisystemen (ohne das %s-Präfix im Einhängepfad zu übernehmen). Gerät Virtuelle Geräte wie /dev, /proc, /sys, usw. NICHT an %s/ einhängen. Grub nicht installieren Prüfen Sie nochmals, dass die %s/etc/fstab mit der derzeitigen Konfiguration unter %s und Ihrer Konfiguration des neuen Systems übereinstimmt. Während des installationsvorgangs wird es möglich sein, mit chroot in %s zu wechseln und zusätzliche, zum Starten des Systems notwendige, Pakete zu installieren. Während der Installation, werden Sie aufgefordert, Ihre eigene /etc/fstab zu schreiben. Partition bearbeiten Verschlüsseln Veschlüssele {} und formatiere es als {} Verschlüssele %(partition)s ... Verschlüsselung Verschlüsselungs-Passwort Eine Verschlüsselung wird alle Daten von {} löschen.

Sind Sie sicher, dass Sie fortfahren wollen? Lade das System ... Fehler Erweiterte Partition Dateisystemzugriffe Formatieren als Formatiere {} als {} Formatiere %(partition)s als %(format)s ... Weiter Freier Speicherplatz Grub Grub Installation Grub ist nicht konfiguriert. Hostname Systemname:  Wenn aktiviert, wird der Login-Bildschirm beim Systemstart übersprungen und der Benutzer automatisch angemeldet. Wenn Sie diese Anweisungen nicht verstehen, kehren Sie bitte zurück und versuchen keine manuelle Partitionierung. Installieren Installiere Grub auf {} Installiere zusätzliche lokalisierte Pakete Installiere alle für den ersten Start benötigten Pakete (mdadm, cryptsetup, dmraid, usw.) durch den Aufruf von »sudo chroot %s«, gefolgt von den relevanten apt-get/aptitude Installationen. Installiere das Betriebssystem Installationsroutine Fehler bei der Installation Installation abgeschlossen Die Installation ist abgeschlossen. Möchten Sie den Rechner neu starten, um das neue System zu benutzen? Installation pausiert. Bitte die Anweisungen sorgfältig lesen und erst dann mit der installation fortfahren. Die Installation pausiert: Bitte erst die benutzerdefinierte installation beenden Installation pausiert EFI-Pakete werden installiert. Installiere Systemstarter (bootloader) Treiber werden installiert Installiere {}... Tastaturbelegung Tastaturbelegung:  Bezeichnung Label (optional) Sprache Sprache:  Belegung Live Installer Lokalisierung Lokalisiere Abiword Lokalisiere Firefox Lokalisiere KDE Lokalisiere Libre Office Lokalisiere Thunderbird Pakete lokalisieren Automatischer Login beim Systemstart Logische Partition Modell Einhängepunkt Hänge {}{} als {} ein %(partition)s wird in %(mountpoint)s eingehängt Keine %s Datei gefunden! Keine Internetverbindung Nicht eingebunden Achtung: Manchmal (z.B. bei dm-crypt) müssen momentan eingehängte Laufwerke denselben Block-Device-Name verwenden, mit dem sie in %s/etc/fstab auftauchen, damit update-initramfs korrekt funktioniert. Übersicht Partitionierung Passwort für die verschlüsselte Partition: Bitte die folgenden Schritte durchführen und dann "Weiter" wählen, um die Installation abzuschließen. Bitte das Passwort zweimal eingeben damit es wirklich korrekt ist. Bitte das Dateisystem angeben, mit dem die Partition root (/) formatiert werden soll. Sollen die Partitionen wirklich manuell bearbeitet werden Bitte einen Namen für das System eingeben. Bitte das Passwort für Ihr Benutzerkonto eingeben. Bitte einen Benutzernamen ohne -oem angeben. Bitte einen Benutzernamen eingeben. Bitte Ihren Namen eingeben. Bitte auf den Netzwerk-Manager im Benachrichtigungsbereich klicken, um zum Internet zu verbinden, bevor es weitergeht.

Die Installation von %s ist auch ohne Internet möglich.
Ohne Internetverbindung kann das System nicht aktualisiert und einige Pakete nicht lokalisiert werden. Schließen Beenden? Wirklicher Name  Neu laden Entfernbar: VirtualBox wird entfernt Live-Konfiguration wird entfernt (Pakete) Entferne os-prober Dateiabbild (image) auswählen Zeitzone auswählen Ausgewählte Zeitzone: Systemname wird gesetzt Tastaturoptionen werden gesetzt Lokale Einstellungen (locale) werden gesetzt Konfiguration beendet Größe Das Installationsmedium funktioniert nicht! Dies wird üblicherweise von mit {} nicht kompatiblen Brennprogrammen verursacht. Bitte das ISO Image mit einem anderen Programm auf DVD/USB brennen. Zusammenfassung Systemeinstellungen Mach ein Foto Machen Sie ein Foto... Die EFI-Partition ist zu klein. Es müssen mindestens 100 MB sein. Die EFI-Partition muss als vfat formatiert werden. Systemstarter (bootloader) GRUB ist nicht richtig konfiguriert! Dies muß manuell erfolgen. Der Systemname ist nicht korrekt:
Er darf nicht mehr als 63 Zeichen zwischen den Punkten
und nicht mehr als 255 Zeichen insgesamt umfassen. Der Systemname wird der Name des Computers im Netzwerk sein. Mit diesem Namen werden Sie sich am Computer anmelden. Dieses Bild repräsentiert Ihr Benutzerkonto. Es wird im Anmeldebildschirm und an einigen anderen Orten verwendet. Dies wird in der About Me-Anwendung angezeigt werden. Zeitzone Zeitzone:  Typ Das Bild kann nicht konvertiert werden. Fotografieren nicht möglich. Unbekannt Partitions-Einbindung wird gelöst.  Apt Cache wird aktualisiert Das neue System wird aktualisiert. Bereits eingehängtes %s benutzen.  Dieses Feld benutzen, um die Tastatur-Belegung zu testen. Benutzerinformation Benutzereinstellungen Benutzername:  Variante Bitte sicherstellen, dass fstab korrekt ist (mit blkid die UUIDs prüfen). Schreibe Informationen zum Einhängen des Dateisystems in /etc/fstab Sie wollen Grub NICHT auf Ihrem System installieren.
Ohne einen Systemstarter wie Grub kann Ihr System evtl. nicht starten..

Sind Sie sicher, dass Sie fortfahren wollen? Die Root-Partition soll verschlüsselt werden.

/boot muß auf einer anderen, unverschlüsselten Partition (500 MB) eingehängt werden.
Ohne eine unverschlüsselte /boot-Partition kann das System nicht starten.

Die Verschlüsselung wird alle Daten von {} löschen

Sind Sie sicher, dass Sie fortfahren wollen? Sie wollen Grub auf einer Partition installieren.
Es wird empfohlen, Grub lieber auf einer Platte zu installieren.

Bitte fahren Sie nur fort, wenn ein anderer Systemstarter (bootloader) bereits installiert ist.

Sind Sie sicher, dass Sie fortfahren wollen? Sie haben ausgewählt, dass Sie Ihre Partitionen manuell verwalten. Diese Funktion ist NUR FÜR FORTGESCHRITTENE BENUTZER. Die Dateisysteme müssen zuerst unter %s manuell eingebunden werden bevor benutzerdefiniert Installiert werden kann! Sie müssen ein Dateiformat
für die verschlüsselte Partition auswählen (Standard: ext4): Sie müssen einen Einhängepunkt für die Partiton auswählen: Ihr vollständiger Name Ihr Passwort Die Passwörter stimmen nicht überein. Ihr Bild Ihr Benutzername Ihr Benutzername kann nicht mit einer Zahl beginnen. _Partitionen editieren _Expertenmodus ausgeschaltet eingeschaltet Systemstartmarkierung (boot flag) setzen {} Installer {} OEM-Konfiguration 