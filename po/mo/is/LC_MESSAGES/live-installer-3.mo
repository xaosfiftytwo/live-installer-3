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
  E  �     �     �     �     �          '     ;  Q   A     �     �     �     �     �     �     �            e   &     �     �     �  	   �     �  
   �     �     �            &   %     L     T     b  3   o     �     �  ,   �     �     
            @   +  6   l  x   �  
        '     4     ;     P     b  
   p  l   {     �     �                   0                         $   5   ,   #   *      1                +                          9                 2         (       
      %      3          4   !                        /       8   )   6       &   .   7   "                                         	   '          -    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Checking bootloader Cleaning APT Configuring bootloader Device During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: live-installer_live-installer-is
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-13 09:38+0200
PO-Revision-Date: 2014-08-01 18:36+0000
Last-Translator: Sveinn í Felli <sv1@fellsnet.is>
Language-Team: Icelandic <translation-team-is@lists.sourceforge.net>
Language: is
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 EFI kerfisdisksneið er nauðsynleg, með eftirfarandi eiginleikum:

 - Tengipunktur: /boot/efi
 - Disksneiðaflagg: Bootable
 - Stærð: Stærri en 100 MB
 - Skráakerfi: vfat eða fat32

Til að tryggja samhæfni við Windows mælum við með því að notuð sé fyrsta disksneið disksins undir EFI kerfisdisksneiðina.
  Úthluta sem / Úthluta sem /boot/efi Úthluta sem /home Athugai ræsistjóra Hreinsa til í APT Stilli ræsistjóra Tæki Á meðan á uppsetningu stendur muntu þurfa að skrifa þitt eigið /etc/fstab. Breyta disksneið Aðgerðir með skráakerfi Áfram Laust pláss Vélarheiti Vélarnafn:  Uppsetningarforrit Uppsetningarvilla Uppsetningu lokið Uppsetningu er lokið. Viltu endurræsa tölvuna svo að getir þú notað nýja stýrikerfið þitt? Set upp ræsistjóra Lyklaborðsútfærsla Uppsetning lyklaborðs:  Tungumál Tungumál:  Uppsetning Staðfærsla Staðfærsla pakka Tegund Tengipunktur Tengi %(partition)s sem %(mountpoint)s Yfirlit Disksneiðing Fullt nafn:  Fjarlægi prufudisksstillingar (hugbúnaðarpakkar) Valið tímabelti: Stilla vélarheiti Stilla valmöguleika lyklaborðsuppsetningar Stilla staðfærslu Stærð Yfirlit Kerfisstillingar EFI disksneiðin er of lítil. Hún þarf að vera a.m.k 100 MB. EFI disksneiðin verður að vera forsniðin sem vfat. Þessi mynd er táknmynd notandaaðgangsins þíns. Hún er notuð á innskráningarskjá auk nokkurra annarra tilfella. Tímabelti Tímabelti:  Tegund Upplýsingar notanda Notandastillingar Notandanafn:  Tilbrigði Þú hefur valið að stilla og tengja disksneiðar handvirkt, þessi aðgerð er AÐEINS FYRIR VANA AÐILA. Fullt nafn þitt Lykilorðið þitt Mynd af þér Notandanafnið þitt 