��    �        �   
      �  *   �  &   �  �   �     b     �  (  �     �  ,   �     �     �               (     :  @   ?     �  �   �     &     :     G     d     {     �  �   �     O  C   V     �  �   �  �   A  F   �               "     >  
   [     f  J   z     �     �     �     �  	          *   &     Q  
   Y     d     i     v  
     {   �  c        j     r  %   �  �   �     X     u     �     �  Y   �  �   
  =   �     �     �     �               )     ;     A     R  
   [     f     m     |     �     �     �     �     �     �  #         $     6     <     H  (   Y     �  �   �     c     l     y  %   �  F   �  9   �  U   )  7        �  0   �               =     B     H     T  
   \     g  &   {     �     �     �     �     �     �  �        �     �     �     �  :   �  ,   +  S   X  n   �  9      9   U   a   �   /   �      !!  
   *!     5!     :!     B!     S!  *   k!  	   �!     �!  
   �!     �!  2   �!  �   �!  
  �"  �   �#  ^   t$  U   �$  N   )%  /   x%     �%     �%     �%     �%     �%  (   �%     &&     7&     D&     M&     U&  �  b&  6   (  0   H(  �   y(  &   )     ?)  D  K)     �*  ;   �*     �*     �*     �*     +     "+     A+  N   H+     �+  �   �+  #   [,     ,     �,  $   �,     �,     �,  �   �,     �-  C   �-     .  �   .  �   �.  H   Q/     �/     �/     �/     �/     �/     �/  O   	0     Y0     x0     ~0  #   �0     �0     �0  -   �0  	   	1     1     !1     &1     81     L1  �   b1  |   �1     s2     |2  (   �2  �   �2     w3     �3     �3     �3  W   �3  �   74  P   �4     #5  "   95     \5     o5     �5     �5     �5     �5     �5     �5     �5     �5     �5  !   �5  !   !6     C6  %   a6  %   �6  &   �6  5   �6     
7     7     $7     57  (   I7     r7  �   �7     8     �8     �8  '   �8  V   �8  R   /9  c   �9  I   �9  0   0:  @   a:  +   �:  &   �:     �:     �:     ;  
   ;     !;     9;  *   O;     z;     �;  !   �;  &   �;  %   �;     <  �   '<     �<     �<     =     =  G   $=  *   l=  i   �=  l   >  =   n>  G   �>  k   �>  2   `?     �?     �?     �?     �?     �?  -   �?  9   @     H@     a@     |@     �@  L   �@  �   �@  �   zA  �   uB  j   ZC  w   �C  R   =D  7   �D     �D     �D     �D     	E     E  6   &E     ]E     qE     E  
   �E     �E     6       ^   �   ~      '      G       Y           �       )   �                 M   U      !   O   W   C           S       T   h   y       �          >      �                 �   -   (             �   m       Z   A   1   t   F   e       *   �       $   B       �      b   �   &          w          �   �   E   V      o   H   }       {   �           |   f       7       D   �       p   �       �          
   _          ;   9   �       +   �   g          �       P      �   4       I   �   ,       .       u           d           N           R   X   @   �   �   z      3      �   l          �          �   r       a   i           =       �   K   <       �   �      J                  k       /   0   `              5   ]   j   L   q      v   �   [       8   �       #   	   s   :   \   ?       2   �                   %      c      n   "               x   Q    <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> A root partition is needed to install the system.

 - Mount point: /
 - Recommended size: 30GB
 - Recommended filesystem format: ext4
 Adding new user to the system Advanced... An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Apply Are you sure you want to quit the installer? Assign to / Assign to /boot/efi Assign to /home Automatic login Automatic login:  Back Before continuing, please mount your target filesystem(s) at %s. Browse for more pictures... Cannot download and install additional locale packages: no internet connection
Configuration will still be set to your selected language. Checking bootloader Cleaning APT Click to change your picture Configuring bootloader Configuring sensors Country Create %s/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at %s (without using the %s prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on %s/. Do not install Grub Double-check that your %s/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at %s. During the install, you will be given time to chroot into %s and install any packages that will be needed to boot your new system. During the install, you will be required to write your own /etc/fstab. Edit partition Encrypt Encrypt {} and format as {} Encrypting %(partition)s ... Encryption Encryption password Encryption will erase all data from {}

Are you sure you want to continue? Entering the system ... Error Extended partition Filesystem operations Format as Format {} as {} Formatting %(partition)s as %(format)s ... Forward Free space Grub Grub install Hostname Hostname:  If enabled, the login screen is skipped when the system starts, and you are signed into your desktop session automatically. If you aren't sure what any of this means, please go back and deselect manual partition management. Install Install Grub on {} Install additional localized packages Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot %s" followed by the relevant apt-get/aptitude installations. Install the operating system Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation. Installation is paused: please finish the custom installation Installation paused Installing bootloader Installing drivers Installing {}... Keyboard layout Keyboard layout:  Label Label (optional) Language Language:  Layout Live Installer Localization Localizing AbiWord Localizing Firefox Localizing KDE Localizing LibreOffice Localizing Thunderbird Localizing packages Log in automatically on system boot Logical partition Model Mount point Mount {}{} as {} Mounting %(partition)s on %(mountpoint)s No internet connection Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in %s/etc/fstab. Overview Partitioning Password Password for the encrypted partition: Please do the following and then click Forward to finish installation: Please enter your password twice to ensure it is correct. Please indicate a filesystem to format the root (/) partition with before proceeding. Please make sure you wish to manage partitions manually Please provide a hostname. Please provide a password for your user account. Please provide a username. Please provide your full name. Quit Quit? Real name:  Refresh Removable: Removing VirtualBox Removing live configuration (packages) Select timezone Selected timezone: Setting hostname Setting keyboard options Setting locale Size Something is wrong with the installation medium! This is usually caused by burning tools which are not compatible with {}. Please burn the ISO image to DVD/USB using a different tool. Summary System settings Take a photo Take a photo... The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. The grub bootloader was not configured properly! You need to configure it manually. The hostname is incorrect:
not more than 63 characters between periods
and not more than 255 characters total. This hostname will be the computer's name on the network. This is the name you will use to log in to your computer. This picture represents your user account. It is used in the login screen and a few other places. This will be shown in the About Me application. Timezone Timezone:  Type Unknown Update apt cache Use already-mounted %s. Use this box to test your keyboard layout. User info User settings Username:  Variant Writing filesystem mount information to /etc/fstab You chose to NOT install Grub on your system.
Without a bootloader like Grub your system might not boot.

Are you sure you want to continue? You chose to encrypt the root partition.

You will need to mount /boot on a separate non-encrypted partition (500 MB).
Without a non-encrypted /boot partition your system will be unbootable.

Encryption will erase all data from {}

Are you sure you want to continue? You chose to install Grub on a partition.
It is recommended to install Grub on a disk instead of a partition.

Only continue if you are certain that you have another bootloader already installed.

Are you sure you want to continue? You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. You must first manually mount your target filesystem(s) at %s to do a custom install! You need to choose a format type
for your encrypted partition (default: ext4): You need to choose a mount point for partition: Your full name Your password Your passwords do not match. Your picture Your username Your username cannot start with a digit. _Edit partitions _Expert mode disabled enabled {} Installer Project-Id-Version: live-installer-3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-13 09:38+0200
PO-Revision-Date: 2016-04-05 12:27+0000
Last-Translator: Arjen Balfoort <schoelje@solydxk.com>
Language-Team: Spanish (http://www.transifex.com/solydxk/live-installer-3/language/es/)
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 <b>Por favor, seleccione una partición raíz (/).</b> <b>Por favor, seleccione una partición EFI.</b> Se necesita una partición raíz para instalar en ella.

- Punto de montaje: /
- Tamaño recomendado: 30GB
- Formato de sistema de archivos recomendado: ext4
 Añadiendo el nuevo usuario al sistema Avanzado... Se necesita una partición EFI con los siguientes requerimientos:

 - Punto de montaje: /boot/efi
 - Etiquetas de partición: Bootable
 - Tamaño: Mayor de 100MB
 - Formato: vfat o fat32

Para garantizar la compatibilidad con Windows, se recomienda utilizar la primera partición del disco como partición EFI del sistema.
  Aplicar ¿Está usted seguro de que quiere abandonar el instalador? Asignar a / Asignar a /boot/efi Asignar a /home Inicio de sesión automático Inicio de sesión automático: Volver Por favor, antes de seguir, monte su(s) sistema(s) de archivos objetivo en %s. Mire para ver más imágenes.. No se han podido descargar e instalar los paquetes de idiomas adiconales: no hay conexión a internet
La configuración se mantendrá para el lenguaje seleccionado. Comprobando el cargador de arranque Limpiando APT Pulse para cambiar su imagen Configurando el cargador de arranque Configurando sensores País Cree %s/etc/fstab para los sistemas de archivos del modo en que serán montados en el nuevo sistema, correspondiendo con los actualmente montados en %s (sin usar el prefijo %s en los puntos de montaje). Dispositivo NO monte dispositivos virtuales como /dev, /proc, /sys, etc en %s/. No instalar Grub Asegúrese de que su %s/etc/fstab es correcto, coincide con lo que el nuevo sistema tendrá en el primer arranque, y coincide con lo que está montado actualmente en %s. Durante la instalación, se le dará tiempo para hacer chroot %s e instalar cualquier paquete que sea necesario para arrancar su nuevo sistema. Durante la instalación, se requerirá que escriba su propio /etc/fstab. Editar partición Cifrado Cifrar {} y formatear como {} Cifrando %(partition)s Cifrado Contraseña de crifrado El cifrado borrará todos los datos de {}


¿Está seguro de querer continuar? Iniciando el nuevo sistema ... Error Partición extendida Operaciones del sistema de archivos Formatear como Formatear {} como {} Formateando %(partition)s como %(format)s ... Siguiente Espacio libre Grub Instalación Grub Nombre del servidor Nombre del servidor:  Si está habilitado, la ventana de inicio de sesión se ignora cuando el sistema arranca, y usted es autorizado en su sesión de forma automática. Si no está seguro de lo que significa algo de esto, por favor, vuelva atrás y desactive la gestión manual de particiones. Instalar Instalar Grub en {} Instalar paquetes de idiomas adicionales Instale cualquier paquete que pueda necesitarse en el primer arranque (mdadm, cryptsetup, dmraid, etc) ejecutando "sudo chroot %s" seguido de las instalaciones apt-get/aptitude pertinentes. Instalar el sistema operativo Herramienta de instalación Error de instalación Instalación finalizada La instalación ha finalizado. ¿Quiere reiniciar su equipo para usar el nuevo sistema? La instalación está en pausa. Por favor, lea atentamente las instrucciones en la página antes de hacer clic en Siguiente para terminar la instalación. La instalación está en pausa: por favor, termine la instalación personalizada Instalación en pausa Instalando el cargador de arranque Instalando drivers Instalando {}... Mapa del teclado Mapa del teclado:  Etiqueta Etiqueta (opcional) Idioma Idioma:  Mapa de teclado Instalador Live Localización Configurando el idioma de AbiWord Configurando el idioma de Firefox Configurando el idioma de KDE Configurando el idioma de LibreOffice Configurando el idioma de Thunderbird Configurando el idioma de los paquetes Inicio de sesión automático al arrancar el sistema. Partición lógica Modelo Punto de montaje Montar {}{} como {} Montando %(partition)s en %(mountpoint)s Sin conexión a Internet Tenga en cuenta que para que update-initramfs funcione correctamente en algunos casos (como dm-crypt), puede ser necesario que los discos montados actualmente tengan el mismo nombre de bloque de dispositivo con el que aparecen en %s/etc/fstab. Vista preliminar Creando particiones Contraseña Contraseña para la partición cifrada: Por favor, haga lo siguiente y después pulse Siguiente para terminar la instalación. Por favor, Introduzca su contraseña dos veces para asegurarse de que es correcta. Por favor, indique un sistema de archivos para formatear la partición raíz (/) antes de proceder. Por favor, asegúrese de que quiere gestionar las particiones manualmente Por favor introduzca un nombre para el servidor. Por favor, establezca una contraseña para su cuenta de usuario. Por favor, Introduzca un nombre de usuario. Por favor, escriba su nombre completo. Salir ¿Salir? Nombre completo:  Actualizar Dispositivo extraíble: Eliminando VirtualBox Eliminando paquetes de configuración Live Seleccione su zona horaria Zona horaria seleccionada: Estableciendo nombre del servidor Estableciendo las opciones del teclado Estableciendo configuración regional Tamaño Algo está mal en el medio de instalación! Esto normalmente está causado por grabadoras que no son compatibles con {}. Por favor, grabe la imagen ISO a un DVD/USB con otra herramienta. Sumario Configuración del sistema Haga una foto Tome una foto... La partición EFI es demasiado pequeña. Debe se de 100MB como mínimo. La partición EFI debe tener formato vfat. ¡El cargador de arranque GRUB no se ha configurado correctamente! Es necesario configurarlo manualmente. El nombre de host es incorrecto:
no más de 63 caracteres entre puntos
y no más de 255 caracteres en total. Este nombre de servidor será el nombre del equipo en la red. Éste es el nombre que utilizará para iniciar la sesión en su equipo. Esta imagen representa su cuenta de usuario. Se usa en la pantalla de inicio de sesión y en otros lugares. Esto se mostrará en la aplicación Acerca de mí. Zona horaria Zona horaria:  Tipo Desconocido Actualizando los cachés de apt Utilizar el %s que está montado actualmente. Utilice este cuadro para comprobar el mapa de su teclado. Información del usuario Configuración del usuario Nombre de usuario:  Variante Escribiendo la información de montaje del sistema de archivos en /etc/fstab Ha elegido NO instalar Grub en su sistema.
Sin un sistema de arranque como Grub, su sistema puede no arrancar.

¿Está seguro de querer continuar? Ha elegido cifrar la partición raíz.

Necesitará montar /boot en una partición no cifrada (500MB).
Sin una partición /boot no cifrada su sistema no podrá arrancar.

El cifrado borrará todos los datos de {}


¿Está seguro de querer continuar? Ha elegido instalar Grub en una partición.
Es preferible instalar Grub en un disco, mejor que en una partición.

Continúe sólo si estás eguro de tener otro sistema de arranque instalado.

¿Está seguro de querer continuar? Ha seleccionado gestionar las particiones manualmente. Esta opción es SÓLAMENTE PARA USUARIOS AVANZADOS. ¡Para hacer una instalación personalizada, antes debe montar manualmente en %s su(s) sistema(s) de archivos objetivo! Necesita elegir un tipo de formato
para su partición cifrada (por defecto: ext4): Necesita elegir un punto de montaje para la partición: Su nombre completo Su contraseña Sus contraseñas no coinciden. Su foto Su nombre de usuario Su nombre de usuario no puede comenzar con un número. _Editar particiones _Modo experto Desabilitado Habilitado Instalador de {} 