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
  .  \     �     �     �     �     �  %   �  
     4        M     _     x          �     �     �     �     �  O   �     6     U     o     �     �     �     �     �     �     �  >   �  	   "  	   ,     6  ,   H     u     �  !   �     �     �  
   �     �  0     .   9  s   h     �     �     �     �          /  	   B  ^   L     �     �     �     �         0                         $   5   ,   #   *      1                +                          9                 2         (       
      %      3          4   !                        /       8   )   6       &   .   7   "                                         	   '          -    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Checking bootloader Cleaning APT Configuring bootloader Device During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-13 09:38+0200
PO-Revision-Date: 2014-07-20 14:47+0000
Last-Translator: Algimantas Margevičius <algimantas@margevicius.lt>
Language-Team: Lithuanian <lt@li.org>
Language: lt
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 EFI sisteminis skirsnis yra reikalingas su šiais reikalavimais:

 - Prijungimo vieta: /boot/efi
 - Skirsnio vėliavos: įkėlimui
 - Dydis: daugiau nei 100 MB
 - Failų sistema: vfat arba fat32

Suderinamumo su Windows užtikrinimui rekomenduojame naudoti pirmąjį disko skirsnį kaip EFI skirsnį.
  Priskirti / Priskirti /boot/efi Priskirti /home Tikrinamas sistemos įkėliklis Valomas APT Konfigūruojamas sistemos įkėliklis Įrenginys Diegimo metu jums reikės parašyti savo /etc/fstab. Tvarkyti skirsnį Failų sistemos veiksmai Primyn Laisva vieta Kompiuterio vardas Kompiuterio vardas  Diegimo įrankis Įdiegimo klaida Diegimas baigtas Diegimas baigtas. Ar norite perkrauti kompiuterį ir naudotis naująja sistema? Diegiamas sistemos įkėliklis Klaviatūros išdėstymas Klaviatūros išdėstymas:  Kalba Kalba:  Išdėstymas Lokalizavimas Lokalizuojami paketai Modelis Prijungimo vieta Prijungiamas %(partition)s skirsnis prie %(mountpoint)s vietos Apžvalga Skirsniai Tikrasis vardas:  Šalinama bandomoji konfigūracija (paketai) Pasirinkta laiko zona: Nustatomas kompiuterio vardas Nustatomos klaviatūros parinktys Nustatoma lokalizacija Dydis Suvestinė Sistemos nustatymai EFI skirsnis per mažas. Turi būti bent 100 MB. EFI skirsnis turi būti sužymėtas kaip vfat. Šis paveikslėlis pristato jūsų naudotojo paskyrą. Jis naudojamas prisijungimo ekrane ir keletoje kitų vietų. Laiko juosta Laiko juosta:  Tipas Informacija apie naudotoją Naudotojo nustatymai Naudotojo vardas:  Variantas Pasirinkote tvarkyti skirsnius rankiniu būdu, ši funkcija yra tik PAŽENGUSIEMS NAUDOTOJAMS. Jūsų pilnas vardas Jūsų slaptažodis Jūsų paveikslėlis Jūsų naudotojo vardas 