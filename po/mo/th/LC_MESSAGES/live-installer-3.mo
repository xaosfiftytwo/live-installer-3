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
          ^        s     �     �     �  �  �  �  ?     �  %   �  !   #  �   E  /   �     .      ?  �  `       �   (  �  �  |   �  *     H   8     �  !   �     �     �  z  �  N   h  K   �  9       =  /   B  $   r  &   �     �     �  	   �  0   �  B        X     e  E   �  �  �     �   -   �      �   V   !  7   d!  -   �!  ?   �!  N   
"     Y"     f"  !   s"  {   �"  R   #  �   d#     c$     y$     �$  $   �$  0   �$      �$     %  -  1%  *   _&  *   �&  $   �&  0   �&     ?                     8             $   =              )   "   6                 /                                           7      3          5      #       <   (       >                       1   %       0   9      	      4   '   &   
      2         ;       -   *   :                ,                     .   !       +    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Before continuing, please mount your target filesystem(s) at /target. Checking bootloader Cleaning APT Configuring bootloader Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-27 14:53+0100
PO-Revision-Date: 2014-06-05 10:34+0000
Last-Translator: Rockworld <sumoisrock@gmail.com>
Language-Team: Thai <th@li.org>
Language: th
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:49+0000
X-Generator: Launchpad (build 17196)
 ต้องมีพาร์ทิชันระบบ EFI พร้อมทั้งความต้องการขั้นต่ำดังต่อไปนี้:

 - จุดเมานต์: /boot/efi
 - สถานะพาร์ทิชัน: ใช้เริ่มระบบได้
 - ขนาด: ใหญ่กว่า 100MB
 - รูปแบบ: vfat หรือ fat32

เพื่อรับรองความเข้ากันได้กับ Windows เราแนะนำให้คุณใช้พาร์ทิชันแรกของดิสก์เป็นพาร์ทิชันระบบ EFI
  กำหนดเป็น / กำหนดเป็น /boot/efi กำหนดเป็น /home ก่อนดำเนินการต่อไป กรุณาเมานต์ระบบแฟ้มเป้าหมายของคุณที่ /target ก่อน กำลังตรวจสอบ bootloader ล้าง APT ตั้งค่า bootloader สร้าง /target/etc/fstab ให้ระบบแฟ้มซึ่งมันจะถูกเมานต์ในระบบใหม่ของคุณคู่กับสิ่งเหล่านั้นที่เมานต์ไว้แล้วที่ /target โดยไม่ใช้ /target นำหน้าเส้นทางการเมานต์ด้วยตัวมันเอง อุปกรณ์ ห้ามเมานต์โปรแกรมรองรับอุปกรณ์เสมือนในตำแหน่งดังนี้ /dev, /proc, /sys, etc และบน /target/ ตรวจสอบสองครั้งว่า /target/etc/fstab ของคุณถูกต้องแล้ว คู่กับสิ่งที่ระบบใหม่ของคุณจะต้องมีเมื่อเริ่มระบบเป็นครั้งแรก และคู่กับสิ่งที่เมานต์ไว้แล้วที่ /target ระหว่างติดตั้ง คุณจะต้องเขียน /etc/fstab ด้วยตนเอง แก้ไขพาร์ทิชัน การปฏิบัติการกับระบบไฟล์ ถัดไป พื้นที่ว่าง ชื่อโฮสต์ ชื่อโฮสต์:  ติดตั้งแพกเกจที่จะต้องใช้เมื่อเริ่มระบบเป็นครั้งแรก (mdadm, cryptsetup, dmraid และอื่น ๆ) โดยเรียกใช้คำสั่ง "sudo chroot /target" ตามการติดตั้ง apt-get/aptitude ที่เกี่ยวข้อง เครื่องมือสำหรับการติดตั้ง การติดตั้งเกิดความผิดพลาด การติดตั้งเสร็จสิ้น การติดตั้งเสร็จสิ้นแล้ว คุณต้องการเริ่มระบบของคอมพิวเตอร์ใหม่เพื่อใช้ระบบใหม่เลยหรือไม่? กำลังติดตั้ง bootloader ผังแป้นพิมพ์ แบบคีย์บอร์ด:  ภาษา ภาษา:  ผัง ความเป็นท้องถิ่น แพกเกจความเป็นท้องถิ่น รุ่น จุดเมานท์ กำลังเมานท์ %(partition)s บน %(mountpoint)s กรุณาจำไว้ว่าหากต้องการให้ update-initramfs ทำงานถูกต้องในบางกรณี เช่น dm-crypt เป็นต้น คุณจะต้องมีไดรว์ที่เมานต์ไว้แล้วที่ใช้ชื่ออุปกรณ์ที่ถูกบล็อกไว้เหมือนกันซึ่งจะปรากฏอยู่ใน /target/etc/fstab ภาพรวม การจัดพาร์ทิชัน ชื่อจริง:  กำลังลบการตั้งค่าแบบ live (แพคเกจ) เขตเวลาที่เลือกไว้: ตั้งค่าโฮสต์เนม กำลังตั้งค่าคีย์บอร์ด กำลังตั้งค่าตำแหน่งที่ตั้ง ขนาด สรุป ตั้งค่าระบบ พาร์ทิชัน EFI เล็กเกินไป ขนาดต้องไม่ต่ำกว่า 100MB พาร์ทิชัน EFI ต้องฟอร์แมตเป็น vfat รูปภาพนี้แสดงให้เห็นถึงบัญชีผู้ใช้ของคุณ มันจะถูกใช้ในหน้าจอเข้าสู่ระบบและบางที่อื่น ๆ เขตเวลา เขตเวลา:  ประเภท ข้อมูลผู้ใช้ การตั้งค่าผู้ใช้ ชื่อผู้ใช้:  แบบย่อย คุณได้เลือกรูปภาพที่จะจัดการพาร์ทิชันของคุณด้วยตัวเองแล้ว คุณสมบัตินี้ทำได้เฉพาะผู้ใช้ขั้นสูงเท่านั้น ชื่อเต็มของคุณ รหัสผ่านของคุณ รูปภาพของคุณ ชื่อผู้ใช้ของคุณ 