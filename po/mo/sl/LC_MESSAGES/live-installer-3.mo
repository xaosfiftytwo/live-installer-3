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
  )  A  
   k     v     �  "   �     �  #   �     �  8   �     0     ?     ]     d     v     �     �     �     �  a   �  #   ;     _     q     �     �     �     �     �     �     �  -   �          !     7  *   C     n     �     �     �     �     �     �  9     (   <  k   e     �     �     �     �             
   3  ]   >     �     �     �     �         0                         $   5   ,   #   *      1                +                          9                 2         (       
      %      3          4   !                        /       8   )   6       &   .   7   "                                         	   '          -    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Checking bootloader Cleaning APT Configuring bootloader Device During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-13 09:38+0200
PO-Revision-Date: 2014-07-24 09:31+0000
Last-Translator: Damir Jerovšek <Unknown>
Language-Team: Slovenian <sl@li.org>
Language: sl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 Sistemski razdelek EFI je potreben z naslednjimi zahtevami:

 - točka priklopa: /boot/efi
 - zastavice razdelka: zagonljiv
 - velikost: večje od 100MB
 - oblika: vfat ali fat32

Za zagotovitev združljivosti z Windows se priporoča, da uporabite prvi razdelek diska kot sistemski razdelek EFI.
  Dodeli k / Dodeli k /boot/efi Dodeli k /home Preverjanje zagonskega nalagalnika Čiščenje APT Nastavljanje zagonskega nalagalnika Naprava Med nameščanjem boste morali zapisati svoj /etc/fstab. Uredi razdelek Opravila datotečnega sistema Naprej Nezaseden prostor Ime gostitelja Ime gostitelja:  Namestitveno orodje Napaka med namestitvijo Namestitev je končana Nameščanje je zdaj končano. Ali želite ponovno zagnati računalnik za uporabo novega sistema? Nameščanje zagonskega nalagalnika Razporeditev tipk Razporeditev tipk:  Jezik Jezik:  Razporeditev Krajevna prilagoditev Krajevno prilagajanje paketov Model Priklopna točka Priklapljanje %(partition)s na %(mountpoint)s Pregled Ustvarjanje razdelkov Pravo ime:  Odstranjevanje "žive" nastavitve (paketi) Izbran časovni pas: Določanje imena gostitelja Določanje možnosti tipkovnice Določanje jezikovnih oznak Velikost Povzetek Sistemske nastavitve Razdelek EFI je premajhen. Velik mora biti najmanj 100MB. Razdelek EFI mora biti zapisan kot vfat. Ta slika predstavlja vaš uporabniški račun. Uporablja se v prijavnem zaslonu in nekaterih drugih mestih. Časovni pas Časovni pas:  Vrsta Podatki o uporabniku Uporabniške nastavitve Uporabniško ime:  Različica Izbrali ste ročno upravljanje vaših razdelkov. Ta zmožnost je SAMO ZA NAPREDNE UPORABNIKE. Vaše polno ime Vaše geslo Vaša slika Vaše uporabniško ime 