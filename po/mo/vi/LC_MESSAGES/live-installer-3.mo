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
  �  H     �     �     �  ,   �     &  -   <     j  _   w     �      �          #  	   7     A     M     d     v  k   �  -   �     (     =     T     `  	   n     x  !   �     �     �  A   �               &  +   4     `     x  *   �  &   �  
   �  
   �     �  5     ;   O  �   �  
   $     /     <     C     ]     z     �  p   �          ,     E     W         0                         $   5   ,   #   *      1                +                          9                 2         (       
      %      3          4   !                        /       8   )   6       &   .   7   "                                         	   '          -    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Checking bootloader Cleaning APT Configuring bootloader Device During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-13 09:38+0200
PO-Revision-Date: 2014-04-24 17:33+0000
Last-Translator: Tada Saki <a4e484b@hotmail.com>
Language-Team: Vietnamese <vi@li.org>
Language: vi
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 Phân vùng hệ thống EFI là cần thiết với các yêu cầu sau đây:

- Điểm gắn kết: /boot/efi
- Cờ phân vùng: khởi động được
- Kích thước: lớn hơn 100 MB
- Định dạng: vfat hoặc fat32

Để bảo đảm tương thích với Windows, chúng tôi khuyên bạn dùng phân vùng đầu tiên của máy làm phân vùng hệ thống EFI.
  Gán vào / Gán vào /boot/efi Gán vào /home Đang kiểm tra trình nạp khởi động Đang dọn dẹp APT Đang cấu hình trình nạp khởi động Thiết bị Trong quá trình cài đặt, bạn sẽ được yêu cầu tự viết tập tin /etc/fstab. Hiệu chỉnh phân vùng Thao tác hệ thống tập tin Chuyển tiếp Không gian trống Tên máy Tên máy:  Công cụ Cài đặt Lỗi cài đặt Cài đặt hoàn tất Cài đặt hoàn tất. Bạn có muốn khởi động máy lại để dùng hệ thống mới không ? Đang cài đặt trình nạp khởi động Bố trí bàn phím Bố trí bàn phím:  Ngôn ngữ Ngôn ngữ:  Bố trí Bản địa hóa Đang bản địa hoá các gói Mẫu Điểm gắn kết Đang gắn kết phân vùng %(partition)s đến %(mountpoint)s Tổng quan Đang phân vùng Tên thật:  Đang gõ bỏ cấu hình live (các gói) Múi giờ đã chọn: Đang thiết lập tên máy Đang thiếp lập tùy chọn bàn phím Đang thiết lập locale ngôn ngữ Kích cỡ Tóm tắt Thiết lập hệ thống Phân vùng EFI quá nhỏ. Phải ít nhất 100 MB. Phân vùng EFI phải được định dạng kiểu vfat. Ảnh này đại diện cho tài khoản người dùng của bạn. Nó được sử dụng trong màn hình đăng nhập và một số nơi khác. Múi giờ Múi giờ:  Kiểu Thông tin người dùng Thiết lập người dùng Tên người dùng:  Biến thể Bạn đã chọn quản lý phân vùng thủ công, tính năng này CHỈ DÀNH CHO NGƯỜI DÙNG NÂNG CAO. Tên đầy đủ của bạn Mật khẩu của bạn Ảnh của bạn Tên người dùng của bạn 