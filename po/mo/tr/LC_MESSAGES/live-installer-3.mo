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
  <  :     w     �     �     �     �  "   �        H        P     c     |  	   �     �     �     �     �     �  w   �     L     d     s     �     �     �     �     �     �     �  6   �               )  &   <     c     z      �     �     �     �     �  3   �  5   !  x   W     �     �     �     �            
   -  i   8     �  
   �     �     �         0                         $   5   ,   #   *      1                +                          9                 2         (       
      %      3          4   !                        /       8   )   6       &   .   7   "                                         	   '          -    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Checking bootloader Cleaning APT Configuring bootloader Device During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-03-22 09:20+0100
PO-Revision-Date: 2014-06-03 14:57+0000
Last-Translator: kelebek333 <Unknown>
Language-Team: Turkish <tr@li.org>
Language: tr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 Bir EFI sistem bölümü aşağıdaki şartları sağlamalıdır:

 -Bağlama noktası:boot/efi
 -Bölüm bayrağı:Başlatılabilir
 -Boyut:100 MB'tan büyük
 -Biçim: vfat ya da fat32

Windows uyumluluğundan emin olmak için,  diskin ilk bölümünün EFI sistem bölümü olarak kullanılmasını öneriyoruz.
  Atanacak yer: / /boot/efi için atama Atanacak yer: /home Önyükleyici denetleniyor APT temizleniyor Önyükleyici yapılandırılıyor Aygıt Kurulum sırasında, kendi /etc/fstab dosyanızı yazmanız gerekebilir. Bölümü Düzenle Dosya sistemi işlemleri İleri Boş alan Makine adı Makine adı:  Kurulum Aracı Kurulum hatası Kurulum bitti Kurulum tamamlandı. Yeni sisteminizi kullanmaya başlamak için bilgisayarınızı yeniden başlatmak istiyor musunuz? Önyükleyici kuruluyor Klavye düzeni Klavye düzeni:  Dil Dil:  Düzen Yerelleştirme Paketler yerelleştiriliyor Model Bağlama noktası %(mountpoint)s üzerinde %(partition)s bağlanıyor... Genel Bakış Bölümleme Gerçek adınız:  Kurulum ayarları siliniyor (paketler) Seçilen zaman dilimi: Makine adı ayarlanıyor Klavye seçenekleri ayarlanıyor Yerelleştirme ayarlanıyor Boyut Özet Sistem ayarları EFI disk bölümü çok ufak. En az 100 MB olmalı. EFI disk bölümü vfat olarak biçimlendirilmelidir. Bu resim sizin kullanıcı hesabınızı temsil eder. Bu giriş ekranında ve diğer bir kaç alanda kullanılmaktadır. Zaman dilimi Zaman Dilimi:  Tip Kullanıcı bilgisi Kullanıcı ayarları Kullanıcı adı:  Değişken Disk bölümlerini elle düzenlemeyi seçtiniz, bu özellik SADECE İLERİ SEVİYE KULLANICILAR içindir. Tam adınız Parolanız Resminiz Kullanıcı adınız 