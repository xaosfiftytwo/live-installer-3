��    �        �   
      �  *   �  &   �     �     �  (       .  ,   4     a     m     �     �     �     �  E   �     �       �   7     �     �     �     �          +     A     U  �   ]     $  H   +     t  �   �  �   %  F   �     �               '  
   D     O  J   c     �     �     �     �     �  	   	       *   #     N  
   V     a     f     s  
   |  {   �  c        g     o  %   �  �   �     Z     w     �     �  Y   �  �     =   �     �     �     �     
          +     =     C     T  
   ]     h     o     ~     �     �     �     �     �     �  #        &     8     >     J  (   [     �  �   �  �   U     $     -  %   :  F   `  9   �  U   �  7   7     o  0   �     �     �  -   �     #     (     .     :  
   B     M  &   a     �     �     �     �     �     �     �     �       :     ,   L  n   y  9   �  9   "   a   \   /   �      �   
   �      !     !     !      !  *   =!  	   h!     r!  
   �!     �!  2   �!  �   �!  
  S"  �   ^#  ^   F$  N   �$  /   �$     $%     3%     A%     ^%     k%  (   y%     �%     �%     �%     �%     �%  �  �%  6   �'  0   �'  &   �'     (  D  $(     i)  ;   q)     �)     �)     �)     �)     �)     *  S   !*     u*  "   �*  �   �*  #   \+     �+     �+     �+  $   �+     �+     �+     ,  �   ,     �,  H   �,     H-  �   Y-  �   .  H   �.     �.     �.     /     #/     :/     B/  O   Z/     �/     �/     �/     �/  #   �/     0     +0  -   @0  	   n0     x0     �0     �0     �0     �0  �   �0  |   [1     �1     �1  (   �1  �   2     �2     �2     3     13  W   I3  �   �3  P   <4     �4  "   �4     �4     �4     �4     �4     5     5     +5     25     ;5     K5     [5  !   i5  !   �5     �5  %   �5  %   �5  &   6  5   >6     t6     �6     �6     �6  (   �6     �6  �   �6  �   �7     �8     �8  '   �8  V   9  R   Z9  c   �9  I   :  0   [:  @   �:  +   �:  &   �:  <    ;     ];     c;     l;  
   ~;     �;     �;  *   �;     �;     �;  !   <  &   :<  %   a<     �<     �<     �<     �<  G   �<  *   =  l   6=  =   �=  G   �=  k   )>  2   �>     �>     �>     �>     �>     �>  2   ?  9   H?     �?     �?     �?     �?  L   �?  �    @  �   �@  �   �A  j   �B  R   �B  7   RC     �C     �C     �C     �C     �C  6   �C     D     3D     AD  
   ND     YD     9           �      
   *      J       \           �   �   ,   �                 P   X      #   R   Z   F           V       W   l   {                A      �   !              �   0   +      G           q       ]   D   4   <   I   h       -          &   E       ~   �   e   �   (          z          �   �   H   Y      s   K   M      }   �       k   �   i   �   :   "   )   �   �   t           �          	   b          >   _   x       .       j       �   �   ^   S   Q   �   7   f   L       /       1               �   g                       U   [       �   �   |      6      �   p           �              v       d   m           @       �   N   ?       �   �                    �   o       2   3   C               8   a   n   O   u      y   �   �       ;   �       %      w   =   `   B       5   c                   '            r   $           �       T    <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> Adding new user to the system Advanced... An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Apply Are you sure you want to quit the installer? Assign to / Assign to /boot/efi Assign to /home Automatic login Automatic login:  Back Before continuing, please mount your target filesystem(s) at /target. Browse for more pictures... Calculating file indexes ... Cannot download and install additional locale packages: no internet connection
Configuration will still be set to your selected language. Checking bootloader Cleaning APT Click to change your picture Configuring Plymouth Configuring bootloader Configuring initramfs Configuring sensors Country Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Do not install Grub Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be given time to chroot into /target and install any packages that will be needed to boot your new system. During the install, you will be required to write your own /etc/fstab. Edit partition Encrypt Encrypt {} and format as {} Encrypting %(partition)s ... Encryption Encryption password Encryption will erase all data from {}

Are you sure you want to continue? Encryption/password Entering the system ... Error Extended partition Filesystem operations Format as Format {} as {} Formatting %(partition)s as %(format)s ... Forward Free space Grub Grub install Hostname Hostname:  If enabled, the login screen is skipped when the system starts, and you are signed into your desktop session automatically. If you aren't sure what any of this means, please go back and deselect manual partition management. Install Install Grub on {} Install additional localized packages Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Install the operating system Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installation is now paused. Please read the instructions on the page carefully before clicking Forward to finish the installation. Installation is paused: please finish the custom installation Installation paused Installing bootloader Installing drivers Installing {}... Keyboard layout Keyboard layout:  Label Label (optional) Language Language:  Layout Live Installer Localization Localizing AbiWord Localizing Firefox Localizing KDE Localizing LibreOffice Localizing Thunderbird Localizing packages Log in automatically on system boot Logical partition Model Mount point Mount {}{} as {} Mounting %(partition)s on %(mountpoint)s No internet connection No partition table was found on the hard drive: {disk_description}. Do you want the installer to create a set of partitions for you? Note: This will ERASE ALL DATA present on this disk. Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Password for the encrypted partition: Please do the following and then click Forward to finish installation: Please enter your password twice to ensure it is correct. Please indicate a filesystem to format the root (/) partition with before proceeding. Please make sure you wish to manage partitions manually Please provide a hostname. Please provide a password for your user account. Please provide a username. Please provide your full name. Provide an encryption password for partition: Quit Quit? Real name:  Refresh Removable: Removing VirtualBox Removing live configuration (packages) Select timezone Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings Take a photo... The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. The hostname is incorrect:
not more than 63 characters between periods
and not more than 255 characters total. This hostname will be the computer's name on the network. This is the name you will use to log in to your computer. This picture represents your user account. It is used in the login screen and a few other places. This will be shown in the About Me application. Timezone Timezone:  Type Unknown Update apt cache Use already-mounted /target. Use this box to test your keyboard layout. User info User settings Username:  Variant Writing filesystem mount information to /etc/fstab You chose to NOT install Grub on your system.
Without a bootloader like Grub your system might not boot.

Are you sure you want to continue? You chose to encrypt the root partition.

You will need to mount /boot on a separate non-encrypted partition (500 MB).
Without a non-encrypted /boot partition your system will be unbootable.

Encryption will erase all data from {}

Are you sure you want to continue? You chose to install Grub on a partition.
It is recommended to install Grub on a disk instead of a partition.

Only continue if you are certain that you have another bootloader already installed.

Are you sure you want to continue? You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. You need to choose a format type
for your encrypted partition (default: ext4): You need to choose a mount point for partition: Your full name Your password Your passwords do not match. Your picture Your username Your username cannot start with a digit. _Edit partitions _Expert mode disabled enabled {} Installer Project-Id-Version: live-installer
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-18 08:57+0100
PO-Revision-Date: 2016-01-02 09:09+0000
Last-Translator: Arjen Balfoort <schoelje@solydxk.com>
Language-Team: Spanish (http://www.transifex.com/solydxk/live-installer/language/es/)
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 <b>Por favor, seleccione una partición raíz (/).</b> <b>Por favor, seleccione una partición EFI.</b> Añadiendo el nuevo usuario al sistema Avanzado... Se necesita una partición EFI con los siguientes requerimientos:

 - Punto de montaje: /boot/efi
 - Etiquetas de partición: Bootable
 - Tamaño: Mayor de 100MB
 - Formato: vfat o fat32

Para garantizar la compatibilidad con Windows, se recomienda utilizar la primera partición del disco como partición EFI del sistema.
  Aplicar ¿Está usted seguro de que quiere abandonar el instalador? Asignar a / Asignar a /boot/efi Asignar a /home Inicio de sesión automático Inicio de sesión automático: Volver Por favor, antes de seguir, monte su(s) sistema(s) de archivos objetivo en /target. Mire para ver más imágenes.. Calculando índices de archivos... No se han podido descargar e instalar los paquetes de idiomas adiconales: no hay conexión a internet
La configuración se mantendrá para el lenguaje seleccionado. Comprobando el cargador de arranque Limpiando APT Pulse para cambiar su imagen Configurando Plymouth Configurando el cargador de arranque Configurando initramfs Configurando sensores País Cree /target/etc/fstab para los sistemas de archivos del modo en que serán montados en el nuevo sistema, correspondiendo con los actualmente montados en /target (sin usar el prefijo /target en los puntos de montaje). Dispositivo NO monte dispositivos virtuales como /dev, /proc, /sys, etc en /target/. No instalar Grub Asegúrese de que su /target/etc/fstab es correcto, coincide con lo que el nuevo sistema tendrá en el primer arranque, y coincide con lo que está montado actualmente en /target. Durante la instalación, se le dará tiempo para hacer chroot /target e instalar cualquier paquete que sea necesario para arrancar su nuevo sistema. Durante la instalación, se requerirá que escriba su propio /etc/fstab. Editar partición Cifrado Cifrar {} y formatear como {} Cifrando %(partition)s Cifrado Contraseña de crifrado El cifrado borrará todos los datos de {}


¿Está seguro de querer continuar? Cifrado/contraseña Iniciando el nuevo sistema ... Error Partición extendida Operaciones del sistema de archivos Formatear como Formatear {} como {} Formateando %(partition)s como %(format)s ... Siguiente Espacio libre Grub Instalación Grub Nombre del servidor Nombre del servidor:  Si está habilitado, la ventana de inicio de sesión se ignora cuando el sistema arranca, y usted es autorizado en su sesión de forma automática. Si no está seguro de lo que significa algo de esto, por favor, vuelva atrás y desactive la gestión manual de particiones. Instalar Instalar Grub en {} Instalar paquetes de idiomas adicionales Instale cualquier paquete que pueda necesitarse en el primer arranque (mdadm, cryptsetup, dmraid, etc) ejecutando "sudo chroot /target" seguido de las instalaciones apt-get/aptitude pertinentes. Instalar el sistema operativo Herramienta de instalación Error de instalación Instalación finalizada La instalación ha finalizado. ¿Quiere reiniciar su equipo para usar el nuevo sistema? La instalación está en pausa. Por favor, lea atentamente las instrucciones en la página antes de hacer clic en Siguiente para terminar la instalación. La instalación está en pausa: por favor, termine la instalación personalizada Instalación en pausa Instalando el cargador de arranque Instalando drivers Instalando {}... Mapa del teclado Mapa del teclado:  Etiqueta Etiqueta (opcional) Idioma Idioma:  Mapa de teclado Instalador Live Localización Configurando el idioma de AbiWord Configurando el idioma de Firefox Configurando el idioma de KDE Configurando el idioma de LibreOffice Configurando el idioma de Thunderbird Configurando el idioma de los paquetes Inicio de sesión automático al arrancar el sistema. Partición lógica Modelo Punto de montaje Montar {}{} como {} Montando %(partition)s en %(mountpoint)s No hay conexión a internet No se encontró ninguna tabla de particiones en el disco duro: {disk_description}. ¿Quiere que el instalador cree un mapa de particiones? Nota: Esto BORRARÁ TODOS LOS DATOS que haya en el disco. Tenga en cuenta que para que update-initramfs funcione correctamente en algunos casos (como dm-crypt), puede ser necesario que los discos montados actualmente tengan el mismo nombre de bloque de dispositivo con el que aparecen en /target/etc/fstab. Vista preliminar Creando particiones Contraseña para la partición cifrada: Por favor, haga lo siguiente y después pulse Siguiente para terminar la instalación. Por favor, Introduzca su contraseña dos veces para asegurarse de que es correcta. Por favor, indique un sistema de archivos para formatear la partición raíz (/) antes de proceder. Por favor, asegúrese de que quiere gestionar las particiones manualmente Por favor introduzca un nombre para el servidor. Por favor, establezca una contraseña para su cuenta de usuario. Por favor, Introduzca un nombre de usuario. Por favor, escriba su nombre completo. Introduzca una contraseña para el cifrado de la partición: Salir ¿Salir? Nombre completo:  Actualizar Dispositivo extraíble: Eliminando VirtualBox Eliminando paquetes de configuración Live Seleccione su zona horaria Zona horaria seleccionada: Estableciendo nombre del servidor Estableciendo las opciones del teclado Estableciendo configuración regional Tamaño Sumario Configuración del sistema Tome una foto... La partición EFI es demasiado pequeña. Debe se de 100MB como mínimo. La partición EFI debe tener formato vfat. El nombre de host es incorrecto:
no más de 63 caracteres entre puntos
y no más de 255 caracteres en total. Este nombre de servidor será el nombre del equipo en la red. Éste es el nombre que utilizará para iniciar la sesión en su equipo. Esta imagen representa su cuenta de usuario. Se usa en la pantalla de inicio de sesión y en otros lugares. Esto se mostrará en la aplicación Acerca de mí. Zona horaria Zona horaria:  Tipo Desconocido Actualizando los cachés de apt Utilizar el /target que está montado actualmente. Utilice este cuadro para comprobar el mapa de su teclado. Información del usuario Configuración del usuario Nombre de usuario:  Variante Escribiendo la información de montaje del sistema de archivos en /etc/fstab Ha elegido NO instalar Grub en su sistema.
Sin un sistema de arranque como Grub, su sistema puede no arrancar.

¿Está seguro de querer continuar? Ha elegido cifrar la partición raíz.

Necesitará montar /boot en una partición no cifrada (500MB).
Sin una partición /boot no cifrada su sistema no podrá arrancar.

El cifrado borrará todos los datos de {}


¿Está seguro de querer continuar? Ha elegido instalar Grub en una partición.
Es preferible instalar Grub en un disco, mejor que en una partición.

Continúe sólo si estás eguro de tener otro sistema de arranque instalado.

¿Está seguro de querer continuar? Ha seleccionado gestionar las particiones manualmente. Esta opción es SÓLAMENTE PARA USUARIOS AVANZADOS. Necesita elegir un tipo de formato
para su partición cifrada (por defecto: ext4): Necesita elegir un punto de montaje para la partición: Su nombre completo Su contraseña Sus contraseñas no coinciden. Su foto Su nombre de usuario Su nombre de usuario no puede comenzar con un número. _Editar particiones _Modo experto Desabilitado Habilitado Instalador de {} 