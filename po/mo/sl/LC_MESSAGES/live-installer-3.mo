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
          ^        s     �     �     �  �  �  )  =  
   g     r     �  H   �  "   �        #     �   4     �  L   �  �   A  8   �     /     >     \     c     u     �  �   �     L     `     x  a   �  #   �          '     ;     A     I     V     l     �     �  -   �  �   �     �     �     �  *   �     �          0     P     l     u     ~  9   �  (   �  k   �     b     o     ~     �     �     �  
   �  ]   �     -     =     I     U     ?                     8             $   =              )   "   6                 /                                           7      3          5      #       <   (       >                       1   %       0   9      	      4   '   &   
      2         ;       -   *   :                ,                     .   !       +    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Before continuing, please mount your target filesystem(s) at /target. Checking bootloader Cleaning APT Configuring bootloader Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-18 08:57+0100
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
  Dodeli k / Dodeli k /boot/efi Dodeli k /home Pred nadaljevanjem priklopite vaš ciljni datotečni sistem(e) na /cilj. Preverjanje zagonskega nalagalnika Čiščenje APT Nastavljanje zagonskega nalagalnika Ustvarite /cilj/etc/fstab za datotečne sisteme, ker bodo priklopljeni v vaš nov sistem, ki se ujemajo s trenutno priklopljeni na /cilj (brez uporabe predpone v samih poteh priklopa) Naprava NE priklapljajte navideznih naprav, kot je /dev, /proc, /sys itd. na /cilj/. Dvakrat preverite, da je vaš /cilj/etc/fstab pravilen, da se ujema s tem, kar bo vaš nov sistem imel pri prvem zagonu in da se ujema s tem, kar je trenutno priklopljeno na /cilj. Med nameščanjem boste morali zapisati svoj /etc/fstab. Uredi razdelek Opravila datotečnega sistema Naprej Nezaseden prostor Ime gostitelja Ime gostitelja:  Namestite vsakršne pakete, ki so morebiti potrebni za prvi zagon (mdadm, cryptsetup, dmraid, itd.) s klicem "sudo chroot /cilj", čemur sledijo ustrezne namestitve apt-get/aptitude. Namestitveno orodje Napaka med namestitvijo Namestitev je končana Nameščanje je zdaj končano. Ali želite ponovno zagnati računalnik za uporabo novega sistema? Nameščanje zagonskega nalagalnika Razporeditev tipk Razporeditev tipk:  Jezik Jezik:  Razporeditev Krajevna prilagoditev Krajevno prilagajanje paketov Model Priklopna točka Priklapljanje %(partition)s na %(mountpoint)s Upoštevajte, da boste za pravilno delovanje update-initramfs v nekaterih primerih (kot je dm-crypt) morali imeti pogone trenutno priklopljene z uporabo enakega imena bločne naprave, kot se pojavijo v /cilj/etc/fstab. Pregled Ustvarjanje razdelkov Pravo ime:  Odstranjevanje "žive" nastavitve (paketi) Izbran časovni pas: Določanje imena gostitelja Določanje možnosti tipkovnice Določanje jezikovnih oznak Velikost Povzetek Sistemske nastavitve Razdelek EFI je premajhen. Velik mora biti najmanj 100MB. Razdelek EFI mora biti zapisan kot vfat. Ta slika predstavlja vaš uporabniški račun. Uporablja se v prijavnem zaslonu in nekaterih drugih mestih. Časovni pas Časovni pas:  Vrsta Podatki o uporabniku Uporabniške nastavitve Uporabniško ime:  Različica Izbrali ste ročno upravljanje vaših razdelkov. Ta zmožnost je SAMO ZA NAPREDNE UPORABNIKE. Vaše polno ime Vaše geslo Vaša slika Vaše uporabniško ime 