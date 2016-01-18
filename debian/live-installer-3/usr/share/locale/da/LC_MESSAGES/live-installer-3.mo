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
          ^        s     �     �     �  �  �  =  L     �     �     �  G   �       
   !      ,  �   M     #  K   )  �   u  6        I     \     p     w  
   �     �  �   �     `     w     �  Z   �                -     >     D     L     U     b     y       )   �  �   �     �     �     �  "   �     �     �      �       
   :     E     N  ;   b  *   �  c   �     -  
   6     A  
   F     Q     e     r  b   z     �     �     �          ?                     8             $   =              )   "   6                 /                                           7      3          5      #       <   (       >                       1   %       0   9      	      4   '   &   
      2         ;       -   *   :                ,                     .   !       +    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Before continuing, please mount your target filesystem(s) at /target. Checking bootloader Cleaning APT Configuring bootloader Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-18 08:57+0100
PO-Revision-Date: 2014-06-10 17:32+0000
Last-Translator: Alan Mortensen <alanmortensen.am@gmail.com>
Language-Team: Danish <da@li.org>
Language: da
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 En EFI-systempartition med de følgende parametre er påkrævet:

 - Monteringspunkt: /boot/efi
 - Partitionsflag: Bootable
 - Størrelse: Større end 100 MB
 - Format: vfat eller fat32

For at sikre kompatibilitet med Windows anbefaler vi, at du anvender den første partition på disken som EFI-systempartitionen.
  Tildel til / Tildel til /boot/efi Tildel til /home Montér dit/dine target-filsystem(er) på /target, før du fortsætter. Tjekker opstartsindlæseren Renser APT Konfigurerer opstartsindlæseren Dan /target/etc/fstab for filsystemerne, som de vil blive monteret i dit nye system. Filsystemerne vil matche dem, som for tiden er monterede på /target (uden at anvende /target som præfiks i monteringsstierne). Enhed Montér ikke virtuelle enheder så som /dev, /proc, /sys osv. på /target/. Dobbelttjek at din /target/etc/fstab er korrekt, matcher hvad dit nye system vil have under den første opstart og hvad der lige nu er monteret på /target. Under installationen skal du lave din egen /etc/fstab. Redigér partition Filsystemhandlinger Næste Ledig plads Værtsnavn Værtsnavn:  Installér pakker, som kan være nødvendige for den første opstart (mdadm, cryptsetup, dmraid osv.) ved at køre "sudo chroot /target" efterfulgt af de relevante apt-get/aptitude installationer. Installationsværktøj Installationsfejl Installationen er fuldført Installationen er nu færdig. Vil du genstarte din computer og tage det nye system i brug? Installerer opstartsindlæser Tastaturlayout Tastaturlayout:  Sprog Sprog:  Udseende Lokalisering Lokalisering af pakker Model Monteringspunkt Monterer %(partition)s på %(mountpoint)s I nogle tilfælde (f.eks. dm-crypt) kan det være nødvendigt at have drev monterede med de samme blokenhedsnavne som de optræder med i /target/etc/fstab for at få update-initramfs til at fungere ordentligt. Oversigt Partitionering Rigtige navn:  Fjerner live-opsætningen (pakker) Valgt tidszone: Sætter værtsnavn op Sætter tastaturindstillinger op Sætter regionsinformation op Størrelse Oversigt Systemindstillinger EFI-partitionen er for lille. Den skal mindst være 100 MB. EFI-partitionen skal formatteres som vfat. Dette billede repræsenterer din brugerkonto. Det anvendes i login-skærmen og et par andre steder. Tidszone Tidszone:  Type Brugerinfo Brugerindstillinger Brugernavn:  Variant Du har valgt at håndtere dine partitioner manuelt. Denne facilitet er kun for AVANCEREDE BRUGERE. Dit fulde navn Din adgangskode Dit billede Dit brugernavn 