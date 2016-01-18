��    >        S   �      H  (  I     r     ~     �  E   �     �     �     	  �         �  H   �  �   7  F   �     	     *	     @	  
   H	     S	  
   \	  �   g	     
     +
     >
  Y   T
     �
     �
     �
     �
  
   �
     �
               "     (  (   4     ]     f     s  &        �     �     �     �     �     �     �  :     ,   J  a   w     �  
   �     �  	   �     �  
   
       ^        |     �     �     �  �  �  <  ?     |     �     �  T   �          &  "   7  �   Z     H  P   O  �   �  H   n     �     �     �  	   �     �        �        �     �     �  w   �     Y     q     �     �     �     �     �     �     �     �  6   �          *     6  &   I     p     �      �     �     �     �     �  3   �  5   .  x   d     �     �     �     �          '  
   :  i   E     �  
   �     �     �            +      2      !       
   <                .                        '   =         /          &   )   7   4         	   3            "       :   9      6   ,   (      -   >           %   8       $       ;             1                      0       5            #      *                          An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Before continuing, please mount your target filesystem(s) at /target. Checking bootloader Cleaning APT Configuring bootloader Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-18 08:57+0100
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
  Atanacak yer: / /boot/efi için atama Atanacak yer: /home Devam etmeden önce, lütfen hedef dosya sisteminizi /target hedefine bağlayınız. Önyükleyici denetleniyor APT temizleniyor Önyükleyici yapılandırılıyor Yeni sisteminizin dosya sistemini bağlamayı sağlayacak /target/etc/fstab dosyası oluştunuz,  bunun içeriği bağlanacak olan /target hedefiyle eşleşmelidir (bağlama yollarını /target öndeğişkenini kullanmadan belirleyiniz). Aygıt /dev, /proc, /sys, vb. gibi sanal sürücüleri /target/ hedefine BAĞLAMAYINIZ. /target/etc/fstab doğruluğunu dikkatlice kontrol ediniz, bunun eşleşmesi sizin yeni sisteminizi başlatabilmeniz açısından önemlidir, bu eşleşme /target hedefinin bağlanmasını sağlayacaktır. Kurulum sırasında, kendi /etc/fstab dosyanızı yazmanız gerekebilir. Bölümü Düzenle Dosya sistemi işlemleri İleri Boş alan Makine adı Makine adı:  İlk başlangıçta ihtiyaç olabilecek paketleri (mdadm, cryptsetup, dmraid, vb.) "sudo chroot /target" yardımıyla apt-get/aptitude komutları ile kurabilirsiniz. Kurulum Aracı Kurulum hatası Kurulum bitti Kurulum tamamlandı. Yeni sisteminizi kullanmaya başlamak için bilgisayarınızı yeniden başlatmak istiyor musunuz? Önyükleyici kuruluyor Klavye düzeni Klavye düzeni:  Dil Dil:  Düzen Yerelleştirme Paketler yerelleştiriliyor Model Bağlama noktası %(mountpoint)s üzerinde %(partition)s bağlanıyor... Genel Bakış Bölümleme Gerçek adınız:  Kurulum ayarları siliniyor (paketler) Seçilen zaman dilimi: Makine adı ayarlanıyor Klavye seçenekleri ayarlanıyor Yerelleştirme ayarlanıyor Boyut Özet Sistem ayarları EFI disk bölümü çok ufak. En az 100 MB olmalı. EFI disk bölümü vfat olarak biçimlendirilmelidir. Bu resim sizin kullanıcı hesabınızı temsil eder. Bu giriş ekranında ve diğer bir kaç alanda kullanılmaktadır. Zaman dilimi Zaman Dilimi:  Tip Kullanıcı bilgisi Kullanıcı ayarları Kullanıcı adı:  Değişken Disk bölümlerini elle düzenlemeyi seçtiniz, bu özellik SADECE İLERİ SEVİYE KULLANICILAR içindir. Tam adınız Parolanız Resminiz Kullanıcı adınız 