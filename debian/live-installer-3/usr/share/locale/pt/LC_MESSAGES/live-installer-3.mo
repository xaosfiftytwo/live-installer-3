��    �      ,  �   <
      �  *   �  &   �  �        �     �  (  �     �  ,   �          $     8     H     X     j  E   o     �     �  �   �     x     �     �     �     �     �     �            �        �  H   �     3  �   G  �   �  F   l     �     �     �     �  
          J   "     m     �     �     �     �  	   �     �  *   �       
              %     2  
   ;  {   F  c   �     &     .  %   A  �   g          6     H     [  Y   q  �   �  =   N     �     �     �     �     �     �     �            
        '     .     =     J     ]     p          �     �  #   �     �     �     �     	  (        C  �   Z  �        �     �  %   �  F     9   f  U   �  7   �     .  0   I     z     �  -   �     �     �     �     �  
          &         G     W     j     {     �     �     �     �     �  :   �  ,      n   8   9   �   9   �   a   !  /   }!     �!  
   �!     �!     �!     �!     �!  *   �!  	   '"     1"  
   ?"     J"  2   R"  �   �"  
  #  �   $  ^   %  N   d%  /   �%     �%     �%      &     &     *&  (   8&     a&     r&     &     �&     �&     �&  �  �&  2   Y(  /   �(  �   �(  &   c)     �)  D  �)     �*  *   �*     +     +     2+     C+     U+     h+  G   o+     �+  "   �+  �   �+      �,     �,      �,     �,  !   �,     -     3-     I-     R-  �   X-     '.  I   3.     }.  �   �.  �   I/  I   �/     40     H0     V0     t0     �0     �0  W   �0     1     !1     91     >1  #   S1     w1     �1  *   �1     �1     �1     �1     �1     �1     2  �   2  k   �2     "3     +3  '   @3  �   h3     )4     F4     a4     v4  ^   �4  �   �4  N   �5     �5     �5     6     6     +6     >6     S6     \6     n6     u6     ~6     �6     �6     �6     �6     �6     �6     �6     7  9   #7     ]7     p7     w7     �7  &   �7     �7  �   �7  �   �8     �9     �9  #   �9  N   �9  G   ):  g   q:  J   �:  -   $;  ;   R;  *   �;  (   �;  6   �;     <     <     $<  	   6<     @<     L<  '   c<     �<     �<     �<      �<     �<     =     =     "=     :=  D   K=  0   �=  u   �=  ;   7>  >   s>  j   �>  ,   ?     J?     X?     h?     m?     z?     �?  /   �?     �?     �?     @     ,@  F   5@  �   |@  #  !A  �   EB  c   <C  Y   �C  >   �C     9D     MD     YD     xD     �D  ;   �D     �D     �D  
   �D     E  $   E     3E     ;           �   I      ,      L       ^           �   �   .   �                 R   Z      %   T   \   H           X       Y   n   }                C      �   #              �   2   -                 s       _   F   6   >   K   j       /          (   G       �   �   g   �   *          |          �   �   J   [      u   M   O         �       m   �   k   �   <      +   �   �   v           �          
   d          @   a   z       0       l       �   �   `   U   S   �   9   h   N       1       3               �   i               �       W   ]   "   �   �   ~      8      �   r           �              x       f   o           B       �   P   A       �   �                     �   q       4   5   E               :   c   p   Q   w      {   �   �   �   =   �       '   	   y   ?   b   D   $   7   e                   )      !      t   &           �       V    <b>Please select a root (/) partition.</b> <b>Please select an EFI partition.</b> A root partition is needed to install the system.

 - Mount point: /
 - Recommended size: 30GB
 - Recommended filesystem format: ext4
 Adding new user to the system Advanced... An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Apply Are you sure you want to quit the installer? Assign to / Assign to /boot/efi Assign to /home Automatic login Automatic login:  Back Before continuing, please mount your target filesystem(s) at /target. Browse for more pictures... Calculating file indexes ... Cannot download and install additional locale packages: no internet connection
Configuration will still be set to your selected language. Checking bootloader Cleaning APT Click to change your picture Configuring Plymouth Configuring bootloader Configuring initramfs Configuring sensors Copying Country Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Do not install Grub Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be given time to chroot into /target and install any packages that will be needed to boot your new system. During the install, you will be required to write your own /etc/fstab. Edit partition Encrypt Encrypt {} and format as {} Encrypting %(partition)s ... Encryption Encryption password Encryption will erase all data from {}

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
for your encrypted partition (default: ext4): You need to choose a mount point for partition: Your full name Your password Your passwords do not match. Your picture Your username Your username cannot start with a digit. _Edit partitions _Expert mode disabled enabled set boot flag {} Installer Project-Id-Version: live-installer
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-18 08:57+0100
PO-Revision-Date: 2016-01-02 09:09+0000
Last-Translator: Arjen Balfoort <schoelje@solydxk.com>
Language-Team: Portuguese (http://www.transifex.com/solydxk/live-installer/language/pt/)
Language: pt
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 <b>Por favor, selecione a raiz (/) partição.</b> <b>Por favor, selecione uma partição EFI.</b> A partição de root é necessária para instalar o sistema.

 - Ponto de Montem: /
 - Tamanho Recomendado: 30GB
 - Formato de Ficheiros de Sistema Recomendado: ext4
 Adicionando novo utilizador ao sistema Avançado ... Necessita de uma partição de sistema EFI com os seguintes requisitos:

 - Ponto de montagem: /boot/efi
 - Flags da partição: Arranque
 - Tamanho: Maior que 100 MB
 - Formato: vfat ou fat32

Para assegurar compatibilidade com o Windows recomendamos que use a primeira partição do disco como partição de sistema EFI.
  Aplicar Tem certeza que deseja sair do instalador? Atribuir a / Atribuir a /boot/efi Atribuir a /home Login automático Login automático: Voltar Antes de continuar, por favor, monte o sistema de ficheiros em /target. Pesquisar para mais fotos ... Calcular índices de ficheiros ... Não é possível baixar e instalar pacotes de idioma adicionais: sem ligação à Internet
A configuração ainda será definida para o idioma selecionado. A verificar o gestor de arranque A limpar APT Clique para alterar a sua imagem A configurar Plymouth A configurar o gestor de arranque A configurar initramfs A configurar sensores A copiar País Crie  /target/etc/fstab para os sistemas de ficheiros como eles serão montados no seu novo sistema, correspondendo os actualmente montados em /target (sem utilizar o prefixo /target nos pontos de montagem) Dispositivo NÃO monte dispositivos virtuais como /dev, /proc, /sys, etc em /target/. Não instale o Grub Verifique se /target/etc/fstab está correcto, que corresponde ao que o seu sistema terá no seu primeiro arranque e que corresponde ao que se encontra actualmente montado em /target. Durante a instalação, você dará tempo para fazer o chroot em /target e instalar quaisquer pacotes que serão necessários para inicializar seu novo sistema. Durante a instalação, você deverá escrever o seu próprio /etc/fstab. Editar a partição Encriptação Encripte {} e formate como {} Encriptando %(partition)s ... Encriptação Senha de criptografia A encriptação irá apagar todos os dados do {}

Você tem certeza que quer continuar? Criptografia/senha A entrar no sistema ... Erro Partição estendida Operações de sistema de ficheiros Formatar como Formate {} como {} Formatando %(partition)s em %(format)s ... Avançar Espaço livre Grub Instalação do Grub Nome do computador Nome do computador:  Se permitido, o ecrã de login é ignorado quando o sistema é iniciado e você estiver conectado à sua sessão de ambiente de trabalho automaticamente. Se você não tem certeza o que isto significa, por favor volte e desmarque a gestão de partição manual. Instalar Instale o Grub no {} Instalar pacotes adicionais localizados Instalar quaisquer pacotes que possa precisar para o primeiro arranque (mdadm, cryptsetup, dmraid, etc) chamando "sudo chroot /target" seguido das instalações relevantes em apt-get/aptitude. Instalar o sistema operativo Ferramenta de Instalação Erro de instalação Instalação concluída A instalação está agora completa. Quer reiniciar o seu computador para usar o novo sistema? A instalação está agora em pausa. Por favor, leia as instruções na página com cuidado antes de clicar em Avançar para concluir a instalação. A instalação está em pausa: por favor, termine a instalação personalizada Instalação pausada A instalar o gestor de arranque A Instalar drivers Instalando {}... Esquema de teclado Esquema do teclado:  Etiqueta Rotulo (opcional) Idioma Idioma:  Esquema Instalador em Live Localização Localizando AbiWord Localizando Firefox Localizando KDE Localizando LibreOffice Localizando Thunderbird A localizar pacotes Fazer login automaticamente na inicialização do sistema Partição lógica Modelo Ponto de montagem Monte {}{} como {} Montar %(partition)s em %(mountpoint)s Sem ligação com Internet Nenhuma tabela de partição foi encontrada no disco rígido: {disk_description}. Você quer que o instalador crie um conjunto de partições? Nota: Isto irá apagar todos os dados presentes neste disco. Note que de forma a que update-initramfs funcione correctamente em determinadas situações (tais como dm-crypt), talvez tenha que ter as partições actualmente montadas, utilizando o mesmo nome de dispositivo que aparece em /target/etc/fstab. Resumo Particionamento Senha para a partição encriptada: Por favor, faça o seguinte e clique em Avançar para concluir a instalação: Por favor, digite sua senha duas vezes para garantir que está correto. Por favor, indique um sistema de ficheiros para formatar a partição raiz com (/) antes de prosseguir. Por favor, certifique-se que você deseja gerir as partições manualmente Por favor, forneça um nome para o computador Por favor, forneça uma senha para sua conta de utilizador. Por favor, forneça um nome do utilizador. Por favor, forneça o seu nome completo. Forneça uma senha de encriptação para a partição: Sair Sair? Nome verdadeiro:  Atualizar Removível: A remover a VirtualBox A remover configuração live (pacotes) Escolha um fuso horário Fuso-horário selecionado: A definir nome da máquina A definir as opções de teclado A definir localização Tamanho Resumo Definições do sistema Tire uma foto... A partição EFI é demasiado pequena. Tem que ter pelo menos 100MB. A partição EFI tem de ser formatada como vfat. O nome do computador é incorreto:
não mais de 63 caracteres entre períodos
e não mais de 255 caracteres no total. Este nome do computador será o nome do computador na rede. Este é o nome que você usará para iniciar o seu computador. Esta imagem representa a sua conta de utilizador. É usada no ecrã de autenticação e em outros lugares. Isso será mostrado na aplicação About Me. Fuso-Horário Fuso horário:  Tipo Desconhecido Atualização da cache de apt Use já montado /target. Use essa caixa para testar o layout do teclado. Informação do utilizador Definições de utilizador Nome de utilizador:  Variante Escrevendo sistema de ficheiros para montar informação em /etc/fstab Você optou por não instalar o GRUB no seu sistema.
Sem um gestor de arranque como o Grub, o seu sistema pode não arrancar.

Você tem certeza que quer continuar? Você escolheu encriptar a partição root.

Você vai precisar montar o /boot numa partição não-encriptada em separado (500 MB).
Sem uma partição /boot não-encriptada, o seu sistema não arranca.

A encriptação irá apagar todos os dados do {}

Você tem certeza que quer continuar? Você optou por instalar Grub numa partição.
Recomenda-se instalar o Grub num disco, em vez de uma partição.

Continuar apenas se tiver certeza de que você tem um outro gestor de arranque já instalado.

Você tem certeza que quer continuar? Escolheu definir as partições manualmente. Esta função é SOMENTE PARA UTILIZADORES AVANÇADOS. Você precisa escolher um tipo de formato
para sua partição encriptada (padrão: ext4): Você precisa escolher um ponto de montagem para a partição: O seu nome completo A sua senha As suas senhas não coincidem. A sua imagem O seu nome de utilizador O seu nome de utilizador não pode começar com um dígito. _Editar partições _modo Expert Desativado Ativado definir a opção de inicialização {} Instalador 