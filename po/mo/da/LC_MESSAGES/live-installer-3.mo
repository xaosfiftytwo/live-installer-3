��    9      �  O   �      �  (  �               2     B     V     c     z  F   �     �     �     �  
   �        
   	          &     9  Y   O     �     �     �     �  
   �     �     �     	          #  (   /     X     a     n  &   z     �     �     �     �     �     �     �  :   
	  ,   E	  a   r	     �	  
   �	     �	  	   �	     �	  
   
     
  ^   
     w
     �
     �
     �
  �  �
  =  P     �     �     �     �  
   �      �     	  6        F     Y     m     t  
   �     �     �     �     �  Z   �     8     V     e     v     |     �     �     �     �     �  )   �     �     �     	  "        ;     K      a     �  
   �     �     �  ;   �  *     c   /     �  
   �     �  
   �     �     �     �  b   �     C     R     b     n         0                         $   5   ,   #   *      1                +                          9                 2         (       
      %      3          4   !                        /       8   )   6       &   .   7   "                                         	   '          -    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Checking bootloader Cleaning APT Configuring bootloader Device During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-13 09:38+0200
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
  Tildel til / Tildel til /boot/efi Tildel til /home Tjekker opstartsindlæseren Renser APT Konfigurerer opstartsindlæseren Enhed Under installationen skal du lave din egen /etc/fstab. Redigér partition Filsystemhandlinger Næste Ledig plads Værtsnavn Værtsnavn:  Installationsværktøj Installationsfejl Installationen er fuldført Installationen er nu færdig. Vil du genstarte din computer og tage det nye system i brug? Installerer opstartsindlæser Tastaturlayout Tastaturlayout:  Sprog Sprog:  Udseende Lokalisering Lokalisering af pakker Model Monteringspunkt Monterer %(partition)s på %(mountpoint)s Oversigt Partitionering Rigtige navn:  Fjerner live-opsætningen (pakker) Valgt tidszone: Sætter værtsnavn op Sætter tastaturindstillinger op Sætter regionsinformation op Størrelse Oversigt Systemindstillinger EFI-partitionen er for lille. Den skal mindst være 100 MB. EFI-partitionen skal formatteres som vfat. Dette billede repræsenterer din brugerkonto. Det anvendes i login-skærmen og et par andre steder. Tidszone Tidszone:  Type Brugerinfo Brugerindstillinger Brugernavn:  Variant Du har valgt at håndtere dine partitioner manuelt. Denne facilitet er kun for AVANCEREDE BRUGERE. Dit fulde navn Din adgangskode Dit billede Dit brugernavn 