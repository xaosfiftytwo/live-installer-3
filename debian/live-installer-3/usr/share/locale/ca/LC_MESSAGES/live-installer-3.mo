��    �      ,  �   <
      �  *   �  &   �  �        �     �  (  �     �  ,   �          $     8     H     X     j  E   o     �     �  �   �     x     �     �     �     �     �     �            �        �  H   �     3  �   G  �   �  F   l     �     �     �     �  
          J   "     m     �     �     �     �  	   �     �  *   �       
              %     2  
   ;  {   F  c   �     &     .  %   A  �   g          6     H     [  Y   q  �   �  =   N     �     �     �     �     �     �     �            
        '     .     =     J     ]     p          �     �  #   �     �     �     �     	  (        C  �   Z  �        �     �  %   �  F     9   f  U   �  7   �     .  0   I     z     �  -   �     �     �     �     �  
          &         G     W     j     {     �     �     �     �     �  :   �  ,      n   8   9   �   9   �   a   !  /   }!     �!  
   �!     �!     �!     �!     �!  *   �!  	   '"     1"  
   ?"     J"  2   R"  �   �"  
  #  �   $  ^   %  N   d%  /   �%     �%     �%      &     &     *&  (   8&     a&     r&     &     �&     �&     �&  �  �&  7   V(  +   �(  �   �(  $   G)     l)  @  y)     �*  1   �*     �*     +     +     (+     =+     S+  W   [+     �+  &   �+  �   �+  !   �,     �,     �,     �,  "   -     (-     A-     Z-     b-  �   i-     8.  I   D.     �.  �   �.  �   g/  N   �/     <0  	   P0     Z0     y0     �0     �0  P   �0     1     )1     ?1     F1  "   X1     {1     �1  +   �1  	   �1     �1     �1     �1     �1     
2     2  u   �2     3     !3  +   63  �   b3     )4     I4  ,   `4  "   �4  \   �4  �   5  V   �5     �5  '   6     :6     U6     h6     �6  	   �6     �6     �6     �6     �6     �6     �6     �6     7     '7     87     Q7  !   j7  +   �7     �7     �7     �7     �7  .   �7     '8  �   C8  �   �8     �9     �9  )   �9  _   :  G   |:  b   �:  H   ';      p;  A   �;  (   �;     �;  9   <     O<     U<  
   [<     f<     r<     �<  2   �<     �<     �<     	=  !   )=  $   K=     p=     v=     }=     �=  ?   �=  *   �=  s   >  ?   �>  @   �>  k   ?  .   t?     �?     �?     �?     �?  '   �?     �?  8   @     Q@     g@     }@     �@  Q   �@  �   �@    yA  �   B  b   YC  W   �C  2   D     GD     VD  "   mD     �D     �D  0   �D     �D     �D     E  
   E     E     ;E     ;           �   I      ,      L       ^           �   �   .   �                 R   Z      %   T   \   H           X       Y   n   }                C      �   #              �   2   -                 s       _   F   6   >   K   j       /          (   G       �   �   g   �   *          |          �   �   J   [      u   M   O         �       m   �   k   �   <      +   �   �   v           �          
   d          @   a   z       0       l       �   �   `   U   S   �   9   h   N       1       3               �   i               �       W   ]   "   �   �   ~      8      �   r           �              x       f   o           B       �   P   A       �   �                     �   q       4   5   E               :   c   p   Q   w      {   �   �   �   =   �       '   	   y   ?   b   D   $   7   e                   )      !      t   &           �       V    <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> A root partition is needed to install the system.

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

Are you sure you want to continue? Encryption/password Entering the system ... Error Extended partition Filesystem operations Format as Format {} as {} Formatting %(partition)s as %(format)s ... Forward Free space Grub Grub install Hostname Hostname:  If enabled, the login screen is skipped when the system starts, and you are signed into your desktop session automatically. If you aren't sure what any of this means, please go back and deselect manual partition management. Install Install Grub on {} Install additional localized packages Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Install the operating system Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation. Installation is paused: please finish the custom installation Installation paused Installing bootloader Installing drivers Installing {}... Keyboard layout Keyboard layout:  Label Label (optional) Language Language:  Layout Live Installer Localization Localizing AbiWord Localizing Firefox Localizing KDE Localizing LibreOffice Localizing Thunderbird Localizing packages Log in automatically on system boot Logical partition Model Mount point Mount {}{} as {} Mounting %(partition)s on %(mountpoint)s No internet connection No partition table was found on the hard drive: {disk_description}. Do you want the installer to create a set of partitions for you? Note: This will ERASE ALL DATA present on this disk. Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Password for the encrypted partition: Please do the following and then click Forward to finish installation: Please enter your password twice to ensure it is correct. Please indicate a filesystem to format the root (/) partition with before proceeding. Please make sure you wish to manage partitions manually Please provide a hostname. Please provide a password for your user account. Please provide a username. Please provide your full name. Provide an encryption password for partition: Quit Quit? Real name:  Refresh Removable: Removing VirtualBox Removing live configuration (packages) Select timezone Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings Take a photo... The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. The hostname is incorrect:
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
PO-Revision-Date: 2016-01-02 09:09+0000
Last-Translator: Arjen Balfoort <schoelje@solydxk.com>
Language-Team: Catalan (http://www.transifex.com/solydxk/live-installer/language/ca/)
Language: ca
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 <b>Si us plau, seleccioneu una partició arrel (/).</b> <b>Si us plau, trieu una partició EFI.</b> Cal una partició arrel per instal·lar el sistema.

 - Punt de muntatge: /
 - Mida recomanada: 30 GB
 - Sistema de fitxers recomanat: ext4
 S'està afegint l'usuari al sistema  Avançat...  Es necessita una partició EFI amb els següents requeriments:

 - Punt de muntatge: /boot/efi
 - Indicadors de partició: Arrencable
 - Mida: més gran de 100 MB
 - Format: vfat o fat32
 
Per garantir la compatibilitat amb Windows, es recomana fer servir la primera partició del disc com a partició EFI del sistema.
  Aplica  Esteu segurs de voler sortir de l'instal·lador?  Assigna a /  Assignar a /boot/efi  Assigna a /home  Entrada automàtica  Entrada automàtica:  Enrere  Abans de continuar, si us plau, munteu el(s) sistema(es) de fitxers objectiu a /target. Cerca més imatges...  Calculant els índexs dels fitxers...  No es poden baixar i instal·lar paquets de localització addicionals: no hi ha connexió d'internet
Tanmateix, la configuració es definirà per al llenguatge seleccionat. Comprovant el gestor d'arrencada  Netejant l'APT  Cliqueu per canviar la imatge  Configurant Plymouth  Configurant el gestor d'arrencada  Configurant l'initramfs  Configurant els sensors  Copiant País  Crea /target/etc/fstab en els sistemes de fitxers, tal com seran muntats en el nou sistema, corresponent amb els actualment muntats a /target (sense usar el prefix /target en els propis camins de muntatge). Dispositiu  NO munteu dispositius virtuals com ara /dev, /proc, /sys, etc a /target/. No instal·la GRUB  Comproveu bé que el vostre /target/etc/fstab sigui correcte, coincideixi amb el que el seu nou sistema tindrà en la primera arrencada, i coincideixi amb el que està actualment muntat a /target. Durant la instal·lació, tindreu temps per fer chroot a /target i instal lar qualsevol paquet que calgui per iniciar el nou sistema. Durant la instal·lació, se us demanarà escriure el vostre propi /etc/fstab. Edita la partició  Encripta  Encripta {} i formata com a {} Encriptant %(partition)s ... Encriptatge   Contrasenya d'encriptació  L'encriptatge esborrarà totes les dades de {}

Esteu segurs de voler continuar? Encriptage/contrasenya  Entrant al sistema... Error  Partició estesa  Operacions del sistema de fitxers  Formata com:  Formata {} com {} Formatant %(partition)s com a %(format)s... Següent  Espai lliure  GRUB  Instal·la GRUB  Nom de l'amfitrió  Nom de l'amfitrió:  Si s'activa, s'omet la pantalla de registre en arrencar el sistema, i entreu a la vostra sessió d'escriptori automàticament.  Si no esteu segur del que significa tot això, si us plau, torneu enrere i anul·leu la gestió manual de particions. Instal·la  Instal·la GRUB a {} Instal·la paquets localitzats addicionals  Instal·la els paquets que puguin ser necessaris per la primera arrencada (mdadm, cryptsetup, dmraid, etc) executant "chroot sudo /target", seguit de les instal·lacions apt-get/aptitude pertinents. Instal·la el Sistema Operatiu  Eina d'instal·lació  S'ha produït un error en la instal·lació  S'ha finalitzat la instal·lació  La instal·lació està completa. Voleu reiniciar l'ordinador per utilitzar el nou sistema?  La instal·lació està en pausa. Si us plau, llegiu les instruccions de la pàgina amb cura i feu clic a Següent per finalitzar la instal·lació. La instal·lació està en pausa: si us plau, acabeu la instal·lació personalitzada  Instal·lació en pausa  Instal·lant el carregador d'arrencada  Instal·lant controladors  Instal·lant {}... Disposició del teclat  Disposició de teclat:  Etiqueta  Etiqueta (opcional)  Llengua  Idioma:  Disposició  Instal·lador autònom  Localització  Localitzant AbiWord  Localitzant Firefox  Localitzant KDE  Localitzant LibreOffice  Localitzant Thunderbird  Configurant llengua dels paquets  Entrada automàtica en arrencar el sistema  Partició lògica  Model  Punt de muntatge  Munta {}{} com a {} S'està muntant %(partition)s a %(mountpoint)s Sense connexió a internet  No s'ha trobat cap taula de partició al disc dur: {disk_description}. Voleu que l'instal·lador creï una taula de particions? Això ELIMINARÀ TOTES LES DADES existents al disc. Tingueu en compte que perquè update-initramfs funcioni correctament en alguns casos (com dm-crypt), podeu necessitar tenir unitats muntades amb el mateix nom de dispositiu de bloc, tal com apareixen a /target/etc/fstab. Vista de conjunt  Particions  Contrasenya per la partició encriptada:  Si us plau, feu el següent i després feu clic a Següent per a finalitzar la instal·lació:  Si us plau, introduïu la vostra contrasenya dos cops per verificar-la. Indiqueu quin sistema d'arxius voleu usar per formatar la partició arrel (/) abans de continuar.  Si us plau, assegureu-vos que voleu gestionar manualment les particions  Indiqueu el nom de l'amfitrió.  Si us plau, doneu una contrasenya per al vostre compte d'usuari.  Si us plau, introduïu un nom d'usuari.  Indiqueu nom i cognoms.  Entreu una contrasenya d'encriptatge per a la partició:  Surt  Surt? Nom real:  Actualitza  Dispositiu extraïble:  Eliminant VirtualBox  S'està eliminant la configuració live (paquets)  Trieu una zona horària  Zona horària seleccionada:  Definint el nom de l'amfitrió  Establint les opcions del teclat  Establint la configuració regional  Mida  Resum  Paràmetres del sistema  Pren una foto...  La partició EFI és massa petita. Ha de tenir almenys 100 MB.  La partició EFI ha de tenir format vfat.  El nom d'usuari no és correcte.
No pot tenir més de 63 caràcters entre punts
ni més de 255 caràcters en total. Aquest nom d'amfitrió serà el nom de l'ordinador a la xarxa.  Aquest és el nom que usareu per iniciar sessió a l'ordinador.  Aquesta imatge representa el vostre compte d'usuari. S'usa a la pantalla d'inici de sessió i altres llocs. Això es mostrarà a l'aplicació Quant a mi.  Zona horària  Zona horària:  Tipus  Desconegut  Actualitzant la memòria cau de l'APT   Usa el /target ja muntat.  Useu aquest espai per provar la disposició del teclat.  Informació d'usuari  Paràmetres d'usuari  Nom d'usuari:  Variant  S'està escrivint la informació de muntatge del sistema de fitxers a /etc/fstab  Heu triat NO instal·lar GRUB al vostre sistema.
Sense un arrencador com GRUB el sistema no es podrà engegar.

Esteu segurs de voler continuar?  Heu triat encriptar la partició arrel.

Cal que munteu /boot en una partició separada sense encriptar (500 MB).
Sense una partició /boot no encriptada el sistema no arrencarà.

L'encriptatge esborrarà totes les dades de {}

Esteu segurs de voler continuar? Heu triat instal·lar GRUB en una partició.
Es recomana instal·lar GRUB al disc en lloc d'una partició.

Continueu només si esteu segurs de tenir un altre arrencador instal·lat.

Esteu segurs de voler continuar?  Heu seleccionat la gestió manual de particions. Aquesta opció és NOMÉS PER USUARIS AVANÇATS.  Cal especificar un tipus de format per a
la partició encriptada (per omissió: ext4):  Cal triar un punt de muntatge per a la partició:  Nom i cognoms  La vostra contrasenya  Les contrasenyes no coincideixen.  La vostra foto  Nom d'usuari  El nom d'usuari no pot començar amb una xifra.  _Edita les particions  Mode _Expert  desactivada  activada   activa l'indicador d'arrencada Instal·lador {}  