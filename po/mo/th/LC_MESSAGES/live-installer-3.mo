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
  �  C     �  %     !   '  /   I     y      �     �  |   �  *   >  H   i     �  !   �     �        N     K   m  9   �    �  /   �  $   (  &   M     t     �  	   �  0   �  B   �            E   7     }  -   �     �  V   �  7   0  -   h  ?   �  N   �     %     2  !   ?  {   a  R   �  �   0     /     E     ]  $   p  0   �      �     �  -  �  *   +  *   V  $   �  0   �         0                         $   5   ,   #   *      1                +                          9                 2         (       
      %      3          4   !                        /       8   )   6       &   .   7   "                                         	   '          -    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Checking bootloader Cleaning APT Configuring bootloader Device During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-13 09:38+0200
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
  กำหนดเป็น / กำหนดเป็น /boot/efi กำหนดเป็น /home กำลังตรวจสอบ bootloader ล้าง APT ตั้งค่า bootloader อุปกรณ์ ระหว่างติดตั้ง คุณจะต้องเขียน /etc/fstab ด้วยตนเอง แก้ไขพาร์ทิชัน การปฏิบัติการกับระบบไฟล์ ถัดไป พื้นที่ว่าง ชื่อโฮสต์ ชื่อโฮสต์:  เครื่องมือสำหรับการติดตั้ง การติดตั้งเกิดความผิดพลาด การติดตั้งเสร็จสิ้น การติดตั้งเสร็จสิ้นแล้ว คุณต้องการเริ่มระบบของคอมพิวเตอร์ใหม่เพื่อใช้ระบบใหม่เลยหรือไม่? กำลังติดตั้ง bootloader ผังแป้นพิมพ์ แบบคีย์บอร์ด:  ภาษา ภาษา:  ผัง ความเป็นท้องถิ่น แพกเกจความเป็นท้องถิ่น รุ่น จุดเมานท์ กำลังเมานท์ %(partition)s บน %(mountpoint)s ภาพรวม การจัดพาร์ทิชัน ชื่อจริง:  กำลังลบการตั้งค่าแบบ live (แพคเกจ) เขตเวลาที่เลือกไว้: ตั้งค่าโฮสต์เนม กำลังตั้งค่าคีย์บอร์ด กำลังตั้งค่าตำแหน่งที่ตั้ง ขนาด สรุป ตั้งค่าระบบ พาร์ทิชัน EFI เล็กเกินไป ขนาดต้องไม่ต่ำกว่า 100MB พาร์ทิชัน EFI ต้องฟอร์แมตเป็น vfat รูปภาพนี้แสดงให้เห็นถึงบัญชีผู้ใช้ของคุณ มันจะถูกใช้ในหน้าจอเข้าสู่ระบบและบางที่อื่น ๆ เขตเวลา เขตเวลา:  ประเภท ข้อมูลผู้ใช้ การตั้งค่าผู้ใช้ ชื่อผู้ใช้:  แบบย่อย คุณได้เลือกรูปภาพที่จะจัดการพาร์ทิชันของคุณด้วยตัวเองแล้ว คุณสมบัตินี้ทำได้เฉพาะผู้ใช้ขั้นสูงเท่านั้น ชื่อเต็มของคุณ รหัสผ่านของคุณ รูปภาพของคุณ ชื่อผู้ใช้ของคุณ 