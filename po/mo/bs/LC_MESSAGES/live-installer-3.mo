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
  D  D     �     �     �     �     �     �     
  I        \     l     �     �     �     �     �     �     �  m     '   q     �     �     �     �     �     �     �     �     �  )        ;     C     Q  $   ]     �     �     �     �  	   �     �     �  3     -   C  \   q     �     �     �     �          %  	   7  _   A     �     �     �     �         0                         $   5   ,   #   *      1                +                          9                 2         (       
      %      3          4   !                        /       8   )   6       &   .   7   "                                         	   '          -    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Checking bootloader Cleaning APT Configuring bootloader Device During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-13 09:38+0200
PO-Revision-Date: 2014-07-11 13:59+0000
Last-Translator: Almir Zulic <zalmir@yahoo.com>
Language-Team: Bosnian <bs@li.org>
Language: bs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:49+0000
X-Generator: Launchpad (build 17196)
 Potrebno je da EFI sistemska particija zadovoljava sljedeće uslove:

 - Tačka montiranja: /boot/efi
 - Oznaka particije: Bootable
 - Veličina: Veća od 100MB
 - Format: vfat ili fat32

Da bi se obezbjedila kompatibilnost sa Windowsom, preporučujemo vam da koristite prvu particiju na disku kao EFI sistemsku particiju.
  Dodijeli na / Dodijeli na  /boot/efi Dodijeli na /home Provjeravam pokretač sistema Čistim APT Konfigurišem pokretač sistema Uređaj U toku instalacije biće zahtjevano da napišete svoj lični  /etc/fstab. Uredi particiju Operacija nad sistemom podataka Naprijed Slobodan prostor Naziv hosta Ime hosta:  Alat za instalaciju Greška pri instalaciji Instalacija je završena Instalacija je sada završena. Da li želite ponovo pokrenuti vaš kompjuter da bi ste koristili novi sistem? Instaliram program za podizanje sistema Raspored tastature Raspored tastature:  Jezik Jezik:  Raspored Lokalizacija Lokaliziram pakete Model Tačka učitavanja Učitavam %(partition)s na %(mountpoint)s Pregled Podjela diska Pravo ime:  Uklanjam live konfiguraciju (pakete) Odabrana vremenska zona Podešavanje imena hosta Podešavanje opcija tastature Podešavanje lokalizacije Veličina Sažetak Postavke sistema EFI particija je premala. Mora biti najmanje 100MB. EFI particija mora biti formatirana kao vfat. Ova slika predstavlja vaš račun. Koristi se na ekranu prijave i na nekoliko drugih mjesta. Vremenska zona Vremenska zona:  Vrsta Korisničke informacije Korisnička podešavanja Korisničko ime:  Varijanta Odabrali ste da ručno upravljate podjelom diska. Ova mogućnost je SAMO ZA NAPREDNE KORISNIKE. Vaše puno ime Vaša šifra Vaša slika Vaše korisničko ime 