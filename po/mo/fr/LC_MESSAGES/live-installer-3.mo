��    �      $  �   ,
      �  *   �  &   �  �   �     �     �  (  �     �  ,   �               (     8     H     Z  @   _     �  �   �     F     Z     g     �     �     �     �  �   �     w  C   ~     �  �   �  �   i  F   �     3     B     J     f  
   �     �  J   �     �                 	   4     >  *   N     y  
   �     �     �     �  
   �  {   �  c   .     �     �  %   �  �   �     �     �     �     �  Y   �  �   2  =   �     �               0     A     Q     c     i     z  
   �     �     �     �     �     �     �     �     �       #   (     L     ^     d     p  (   �     �  �   �     �     �     �  %   �  F   �  9     U   Q  7   �     �  0   �     +     F     e     j     p     |  
   �     �  &   �     �     �     �     �          &  �   +     �     �     �       :     ,   S  S   �  n   �  9   C   9   }   a   �   /   !     I!  
   R!     ]!     b!     j!     {!  *   �!  	   �!     �!  
   �!     �!  2   �!  �   "  
  �"  �   �#  ^   �$  U   �$  N   Q%  /   �%     �%     �%     �%     
&     &  (   %&     N&     _&     l&     u&     }&     �&  �  �&  0   E(  )   v(  �   �(  (   3)  
   \)  G  g)  	   �*  >   �*     �*     +     +     1+     H+     _+  U   f+     �+  �   �+  %   {,     �,      �,  %   �,     �,     -     #-  �   (-     #.  Z   2.     �.  �   �.  �   �/  \   90     �0     �0     �0  &   �0     �0     1  W   "1     z1     �1     �1  #   �1     �1     �1  +   �1     2     !2     .2     32     H2     T2  �   d2  �   �2     3     �3  9   �3  �   �3  '   �4     �4     5     !5  G   85  �   �5  Y   6     p6  $   �6     �6     �6  !   �6     �6  	   7     7     /7  	   67     @7     L7     e7     r7     �7     �7     �7     �7     �7  6   8     D8     V8     ^8     o8  +   �8     �8  �   �8     �9     �9     �9  (   �9  _   �9  V   ]:  c   �:  :   ;  !   S;  B   u;  '   �;     �;     �;     <     <  
   <     %<     .<  (   H<     q<     �<     �<  $   �<  (   �<     =  �    =     �=     �=     �=     >  K   %>  .   q>  k   �>  r   ?  :   ?  F   �?  �   @  J   �@     �@     �@  
   �@     �@     A  )    A  T   JA     �A     �A     �A     �A  L   �A  �   4B  %  �B    D  |   %E  �   �E  ]   1F  9   �F     �F     �F  $   �F     G     %G  8   7G     pG     �G  
   �G     �G     �G     �G     7       _   �         (      H       Z           �       *   �                 N   V      "   P   X   D           T       U   i   z       �          ?      �                  �   .   )             �   n       [   B   2   u   G   f       +   �       %   C       �   �   c   �   '          x          �   �   F   W      p   I   ~       |   �           }   g       8      E   �       q   �       �          
   `          <   :   �       ,   �   h          �       Q      �   5       J   �   -       /       v           e           O   �       S   Y   A   �   �   {      4      �   m          �          �   s       b   j           >       �   L   =       �   �      K                  l       0   1   a              6   ^   k   M   r      w   �   \       9   �       $   	   t   ;   ]   @   !   3   �                   &      d      o   #               y   R    <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> A root partition is needed to install the system.

 - Mount point: /
 - Recommended size: 30GB
 - Recommended filesystem format: ext4
 Adding new user to the system Advanced... An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Apply Are you sure you want to quit the installer? Assign to / Assign to /boot/efi Assign to /home Automatic login Automatic login:  Back Before continuing, please mount your target filesystem(s) at %s. Browse for more pictures... Cannot download and install additional locale packages: no internet connection
Configuration will still be set to your selected language. Checking bootloader Cleaning APT Click to change your picture Configuring bootloader Configuring sensors Copying Country Create %s/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at %s (without using the %s prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on %s/. Do not install Grub Double-check that your %s/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at %s. During the install, you will be given time to chroot into %s and install any packages that will be needed to boot your new system. During the install, you will be required to write your own /etc/fstab. Edit partition Encrypt Encrypt {} and format as {} Encrypting %(partition)s ... Encryption Encryption password Encryption will erase all data from {}

Are you sure you want to continue? Entering the system ... Error Extended partition Filesystem operations Format as Format {} as {} Formatting %(partition)s as %(format)s ... Forward Free space Grub Grub install Hostname Hostname:  If enabled, the login screen is skipped when the system starts, and you are signed into your desktop session automatically. If you aren't sure what any of this means, please go back and deselect manual partition management. Install Install Grub on {} Install additional localized packages Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot %s" followed by the relevant apt-get/aptitude installations. Install the operating system Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation. Installation is paused: please finish the custom installation Installation paused Installing bootloader Installing drivers Installing {}... Keyboard layout Keyboard layout:  Label Label (optional) Language Language:  Layout Live Installer Localization Localizing AbiWord Localizing Firefox Localizing KDE Localizing LibreOffice Localizing Thunderbird Localizing packages Log in automatically on system boot Logical partition Model Mount point Mount {}{} as {} Mounting %(partition)s on %(mountpoint)s No internet connection Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in %s/etc/fstab. Overview Partitioning Password Password for the encrypted partition: Please do the following and then click Forward to finish installation: Please enter your password twice to ensure it is correct. Please indicate a filesystem to format the root (/) partition with before proceeding. Please make sure you wish to manage partitions manually Please provide a hostname. Please provide a password for your user account. Please provide a username. Please provide your full name. Quit Quit? Real name:  Refresh Removable: Removing VirtualBox Removing live configuration (packages) Select timezone Selected timezone: Setting hostname Setting keyboard options Setting locale Size Something is wrong with the installation medium! This is usually caused by burning tools which are not compatible with {}. Please burn the ISO image to DVD/USB using a different tool. Summary System settings Take a photo Take a photo... The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. The grub bootloader was not configured properly! You need to configure it manually. The hostname is incorrect:
not more than 63 characters between periods
and not more than 255 characters total. This hostname will be the computer's name on the network. This is the name you will use to log in to your computer. This picture represents your user account. It is used in the login screen and a few other places. This will be shown in the About Me application. Timezone Timezone:  Type Unknown Update apt cache Use already-mounted %s. Use this box to test your keyboard layout. User info User settings Username:  Variant Writing filesystem mount information to /etc/fstab You chose to NOT install Grub on your system.
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
POT-Creation-Date: 2016-04-08 13:47+0200
PO-Revision-Date: 2016-04-05 12:27+0000
Last-Translator: Arjen Balfoort <schoelje@solydxk.com>
Language-Team: French (http://www.transifex.com/solydxk/live-installer-3/language/fr/)
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
 Veuillez sélectionner une partition racine (/). <b>Veuillez choisir une partition EFI</b> Une partition racine est nécessaire pour installer le système.

 - Point de montage: /
 - Taille recommandée: 30Go
 - Format recommandé: ext4
 Ajoute un nouvel utilisateur au système Avancé... Une partition EFI système est nécessaire. Elle doit remplir les critères suivants : 

 - Point de montage : /boot/efi
 - Propriétés de la partition : bootable
 - Taille : supérieure à 100 Mo
 - Format : vfat ou fat32

Pour une meilleure compatibilité avec Windows il est recommandé d'utiliser la première partition.
  Appliquer Etes-vous sûr de vouloir quitter le programme d'installation? Attribuer à / Attribuer à /boot/efi Attribuer à /home Connexion automatique. Connexion automatique. Retour Veuillez monter le système de fichiers cible à l'emplacement %s avant de continuer. Parcourir pour plus d'images... Impossible de télécharger et installer les paquets de localisation: pas de connexion internet
La configuration reste celle du langage choisi précédemment. Vérification du chargeur d'amorçage Nettoyage de APT Cliquez pour changer votre image Configuration du chargeur d'amorçage Configuration des capteurs Copie en cours Pays Veuillez créer le fichier %s/etc/fstab pour les systèmes de fichiers qui seront montés dans votre nouveau système, correspondant à ceux montés actuellement à l'emplacement %s (sans utiliser le préfixe %s dans le chemin des points de montage). Périphérique Ne montez PAS de systèmes virtuels (tels que /dev, /pro, /sys, etc) à l'emplacement %s/. Ne pas installer Grub Vérifiez attentivement que le fichier %s/etc/fstab est correct, qu'il est corresponde à la configuration du système à son premier démarrage, et qu'il corresponde à ce qui est actuellement monté à l'emplacement %s. Durant la procédure d'installation, vous aurez le temps d'effectuer un chroot dans l'emplacement %s afin d'installer les paquets nécessaires au démarrage de votre nouveau système. Durant la procédure d'installation, vous devrez renseigner votre propre fichier /etc/fstab. Modifier la partition Chiffrer  Crypter {} et formater en {} Cryptage en cours de %(partition)s ... Chiffrement mot de passe de chiffrement Le chiffrement effacera toutes les données de {}

Etes-vous sûr de vouloir continuer? Accès au système... Erreur Partition étendue Opérations du système de fichiers Formater en  Formater {} en {} Formatage de %(partition)s en %(format)s... Suivant Espace libre Grub Installation de Grub Nom d'hôte Nom d'hôte :  Si l'option est activée, l'écran de connexion est ignoré lors du démarrage, et vous accédez à votre session automatiquement. Si vous avez le moindre doute sur la signification de tout ceci, veuillez revenir en arrière et désélectionner le choix d'un partitionnement manuel. Installation  Installer Grub sur {} Installation des paquets supplémentaires de localisation Veuillez installer l'ensemble des paquetages nécessaires au premier démarrage du système (mdadm, cryptsetup, dmraid, etc) en exécutant la commande "sudo chroot %s", suivie des commandes installations apt-get/aptitude adéquates. Installation du système d'exploitation Outil d'installation Erreur lors de l'installation Installation terminée L'installation est terminée. Souhaitez-vous redémarrer l'ordinateur ? Le processus d'installation est en pause. Veuillez lire lire attentivement instructions sur la page et cliquer sur Suivant pour finir l'installation. Le processus d'installation est en pause: veuillez terminer l'installation personnalisée Installation suspendue Installation du chargeur d'amorçage Installation des pilotes Installation {}... Choisir la disposition du clavier Agencement du clavier :  Etiquette Label (optionel) Langue Langue :  Disposition Programme d'installation Localisation Localisation d'Abiword Localisation de Firefox Localisation de KDE Localisation de Libreoffice Localisation de Thunderbird Régionalisation des paquetages Se connecter automatiquement au démarrage du système Partition logique Modèle Point de montage Monter {}{} en {} Montage de %(partition)s sur %(mountpoint)s Pas de connexion internet Veuillez noter que update-initramf nécessite dans certains cas (tels que dm-crypt) que les lecteurs actuellement montés utilisent les noms de périphériques par blocs tels qu'ils apparaissent dans le fichier %s/etc/fstab. Vue d'ensemble Partitionnement Mot de passe Mot de passe pour la partiton chiffrée: Veuillez effectuer les actions suivantes puis cliquer sur Suivant pour terminer l'installation. Veuillez entrer votre mot de passe deux fois afin de s'assurer qu'il soit correct svp. Merci d'indiquer un système de fichiers pour formater la partition racine (/) avant de poursuivre. Assurez-vous de vouloir gérer les partitions manuellement Veuillez définir un nom d'hôte. veuiilez définir un mot de passe pour votre compte d'utilisateur. Veuiilez définir un nom d'utilisateur. Veuillez indiquer votre nom Quitter Quitter? Vrai nom :  Actualiser Amovible Suppression de VirtualBox Suppression des paquets du système live Sélectionnez un fuseau horaire Fuseau horaire sélectionné : Définition du nom d'hôte Configuration des options de clavier Configuration des paramètres régionaux Taille Le support d'installation semble corrompu! Cela provient généralement d'un logiciel de gravure non compatible avec {}. Merci de graver l'image ISO sur USB/DVD à l'aide d'un autre programme. Résumé Paramètres système Prendre une photo Prenez une photo... La partion EFI est trop petite. Sa taille doit être supérieure à 100 Mo. La partition EFI doit être formatée en vfat. Le chargeur d'amorçage GRUB n'a pas été configuré correctement ! Vous devez le configurer manuellement. Le nom d'hôte est incorrect:
pas plus de 63 caractères entre les points
et pas plus de 255 caractères au total. Le nom d'hôte sera le nom de l'ordinateur sur le réseau. Ceci est le nom avec lequel vous vous connecterez à votre ordinateur. Cette image est associée à votre compte utilisateur. Elle est utilisée pour l'écran de connexion et à quelques autres endroits. Cette information sera visible dans l'application « À propos de moi » Fuseau horaire Fuseau horaire :  Catégorie Inconnu Mise à jour du cache apt Utiliser le répertoire %s déjà monté. Utilkisez cette fenêtre de dialogue pour tester la configuration de  votre clavier. Info utilisateur Paramètres utilisateur Nom d'utilisateur :  Variante Écriture des informations de montage du système de fichiers sur /etc/fstab Vous avez choisi de NE PAS installer Grub sur votre système.
Sans un chargeur d'amorçage comme Grub, votre système risque de ne pas démarrer.

Etes-vous sûr de vouloir continuer? Vous avez choisi de chiffrer la partition racine.

Vous devrez donc monter /boot sur une partition séparée non chiffrée (500 Mo).
Sans partition /boot non chiffrée, votre système ne pourra démarrer.

Le chiffrement effacera toute vos données sur {}

Etes-vous sûr de vouloir continuer? Vous avez choisi d'installer Grub sur une partition.
Il est recommandé d'installer Grub sur le disque plutôt que sur une partition.

Ne continuez que si vous êtes sur que vous disposez d'un autre chargeur d'amorçage déja installé.

Etes-vous sûr de vouloir continuer? Vous avez choisi de gérer vos partitions manuellement. Cette fonctionnalité est destinée aux UTILISATEURS EXPÉRIMENTÉS. Vous devez d'abord monter manuellement le(s) système(s) de fichiers cible(s) à l'emplacement %s pour faire une installation personnalisée ! Vous devez choisir un système de fichiers
pour votre partition cryptée (par défaut: ext4): Vous devez choisir un point de montage pour la partition: Votre nom complet Votre mot de passe Vos mots de passe ne concordent pas. Image personnelle Votre identifiant Votre nom d'utilisateur ne peut débuter par un chiffre. _Editer les partitions mode _Expert desactivé activé Placer le drapeau de boot  {} Programme d'installation 