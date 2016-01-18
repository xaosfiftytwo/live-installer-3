��    ?        Y         p  (  q     �     �     �  E   �          $     1  �   H       H     �   _  F   �     C	     R	     h	  
   p	     {	  
   �	  �   �	     A
     S
     f
  Y   |
     �
     �
     �
       
        "     )     6     J     P  (   \  �   �     T     ]     j  &   v     �     �     �     �     �     �     �  :     ,   A  a   n     �  
   �     �  	   �     �  
          ^        s     �     �     �  �  �  V  :     �     �     �  N   �          /     >  �   U  
   ;  P   F  �   �  Q   C     �  "   �     �     �     �     �  �   �     �     �     �  d     @   q     �     �     �     �  
   �  
   �               $  ,   5  �   b     U     [     j  4   v     �     �  !   �  !   �     !     )     1  C   @  5   �  �   �     @  
   I     T     X     u     �  	   �  h   �       	        &     .     ?                     8             $   =              )   "   6                 /                                           7      3          5      #       <   (       >                       1   %       0   9      	      4   '   &   
      2         ;       -   *   :                ,                     .   !       +    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Before continuing, please mount your target filesystem(s) at /target. Checking bootloader Cleaning APT Configuring bootloader Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-18 08:57+0100
PO-Revision-Date: 2014-06-05 20:20+0000
Last-Translator: Flaviu <flaviu@gmx.com>
Language-Team: Romanian <ro@li.org>
Language: ro
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 Este nevoie de o partiție de sistem EFI cu următoarele cerințe:

 - Punct de montare: /boot/efi
 - Steagurile partiției: Butabilă
 - Mărimea: Mai mare de 100MB
 - Formatul: vfat sau fat32

Pentru a asigura compatibilitatea cu Windows noi îți recomandăm să folosești prima partiție a hard-discului ca și partiție de sistem EFI.
  Atribuie lui / Atribuie lui /boot/efi Atribuie lui /home Înainte de a continua, te rog montează sistemul de fișiere ales la /target. Verificare bootloader Curăţare APT Configurare bootloader Creează /target/etc/fstab pentru sistemele de fișiere fiindcă ele vor fi montate în noul tău sistem, ele trebuie să corespundă cu cele montate acum la /target (fără să folosești prefixul /target în căile de montare). Dispozitiv Nu monta sisteme de fișiere virtuale ca și /dev, /proc, /sys, etc la /target/. Verifică de două ori că fișierul /target/etc/fstab este corect și coincide cu ceea ce noul tău sistem va avea la prima pornire și cu ce este montat acum la /target. În timpul instalării, vei fi nevoit să scrii propriul tău fișier /etc/fstab. Modifică partiția Operațiile sistemului de fișiere Înainte Spaţiu liber Nume gazdă Nume gazdă:  Instalează orice pachete necesare pentru prima pornire de sistem/prima butare (mdadm, cryptsetup, dmraid, etc) folosind comanda "sudo chroot /target" continuată de instalările apt-get/aptitude relevante. Unealtă de instalare Eroare la instalare Instalare finalizată Instalarea este acum finalizată. Vrei să-ți repornești calculatorul pentru a folosi noul sistem? Se instalează bootloader-ul (programul de pornire a sistemului) Aranjament tastatură Aranjament tastatură:  Limba Limba:  Aranjament Localizare Se localizează pachetele Model Punct de montare Se montează %(partition)s ca %(mountpoint)s Ia aminte că pentru ca update-initramfs să funcționeze normal în anumite cazuri (ca de exemplu dm-crypt), va trebui ca tu să ai dispozitivele montate folosind aceleași nume de dispozitive bloc ca și cele folosite în /target/etc/fstab. Sumar Partiționarea Nume real:  Se elimină configurația anterioară (a pachetelor) Fusul orar selectat: Se setează numele de gazdă Se setează opțiunile tastaturii Se setează configurația locală Mărime Rezumat Setări sistem Partiția EFI este prea mică. Trebuie să fie cel puțin de 100MB. Partiția EFI trebuie să fie formatată ca și vfat. Această poză reprezintă contul tău de utilizator. Este folosită pe ecranul de intrare/autentificare și în alte câteva locuri. Fus Orar Fus orar:  Tip Informatii despre utilizator Setări utilizator Utilizator:  Variantă Ai ales să gestionezi manual partițiile tale, acest lucru este rezervat doar UTILIZATORILOR AVANSAȚI. Numele tău complet Parola ta Poza ta Numele tău de utilizator 