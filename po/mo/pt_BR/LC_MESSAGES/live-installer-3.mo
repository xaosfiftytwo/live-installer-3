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
          ^        s     �     �     �  �  �  K  W     �     �     �  M   �  )   -     W  *   d  �   �     Q  N   ]  �   �  S   V     �  "   �     �     �     �       �        �     �       ^     *   }     �     �     �     �     �     �     �            (      �   I               -  '   =     e          �     �     �     �     �  @   �  -   :  g   h     �     �     �     �          )  	   <  l   F     �  	   �     �     �     ?                     8             $   =              )   "   6                 /                                           7      3          5      #       <   (       >                       1   %       0   9      	      4   '   &   
      2         ;       -   *   :                ,                     .   !       +    An EFI system partition is needed with the following requirements:

 - Mount point: /boot/efi
 - Partition flags: Bootable
 - Size: Larger than 100MB
 - Format: vfat or fat32

To ensure compatibility with Windows we recommend you use the first partition of the disk as the EFI system partition.
  Assign to / Assign to /boot/efi Assign to /home Before continuing, please mount your target filesystem(s) at /target. Checking bootloader Cleaning APT Configuring bootloader Create /target/etc/fstab for the filesystems as they will be mounted in your new system, matching those currently mounted at /target (without using the /target prefix in the mount paths themselves). Device Do NOT mount virtual devices such as /dev, /proc, /sys, etc on /target/. Double-check that your /target/etc/fstab is correct, matches what your new system will have at first boot, and matches what is currently mounted at /target. During the install, you will be required to write your own /etc/fstab. Edit partition Filesystem operations Forward Free space Hostname Hostname:  Install any packages that may be needed for first boot (mdadm, cryptsetup, dmraid, etc) by calling "sudo chroot /target" followed by the relevant apt-get/aptitude installations. Installation Tool Installation error Installation finished Installation is now complete. Do you want to restart your computer to use the new system? Installing bootloader Keyboard layout Keyboard layout:  Language Language:  Layout Localization Localizing packages Model Mount point Mounting %(partition)s on %(mountpoint)s Note that in order for update-initramfs to work properly in some cases (such as dm-crypt), you may need to have drives currently mounted using the same block device name as they appear in /target/etc/fstab. Overview Partitioning Real name:  Removing live configuration (packages) Selected timezone: Setting hostname Setting keyboard options Setting locale Size Summary System settings The EFI partition is too small. It must be at least 100MB. The EFI partition must be formatted as vfat. This picture represents your user account. It is used in the login screen and a few other places. Timezone Timezone:  Type User info User settings Username:  Variant You have selected to manage your partitions manually, this feature is for ADVANCED USERS ONLY. Your full name Your password Your picture Your username Project-Id-Version: linuxmint
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-01-27 14:53+0100
PO-Revision-Date: 2014-07-29 19:18+0000
Last-Translator: Frederico <fas.cardillo@gmail.com>
Language-Team: Brazilian Portuguese <pt_BR@li.org>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-09-11 21:48+0000
X-Generator: Launchpad (build 17196)
 Uma partição de sistema EFI é necessária com os seguintes requisitos:

 - Ponto de montagem: /boot/efi
 - Flags da partição: Bootable
 - Tamanho: Maior que 100MB
 - Formato: vfat ou fat32

Para assegurar compatibilidade com Windows, nós recomendamos que use a primeira partição do disco como a partição de sistema EFI.
  Atribuir como / Atribuir para /boot/efi Atribuir como /home Antes de continuar, por favor monte seu(s) sistema(s) de arquivos em /target. Verificando carregador de inicialização Limpando APT Configurando carregador de inicialização Crie o /target/etc/fstab para os sistemas de arquivos que serão montados no novo sistema, combinando-os àqueles montados no /target (sem usar o prefixo /target nos caminhos de montagem deles) Dispositivo Não monte os dispositivos virtuais como /dev, /proc, /sys, etc., no /target/. Verifique novamente se o seu /target/etc/fstab está correto, corresponde ao que o seu novo sistema terá no primeiro boot e coincide com o que está montado em /target. Durante a instalação será necessário que você escreva seu próprio /etc/fstab. Editar partição Operações de sistema de arquivos Avançar Espaço livre Nome do Host Nome do host:  Instale todos os pacotes que podem ser necessários para o primeiro boot (mdadm, cryptsetup, DMRAID, etc), chamando "sudo chroot / target" seguido pelas instalações apt-get/aptitude relevantes. Ferramenta de Instalação Erro na instalação Instalação concluída A instalação está completa. Você quer reiniciar o seu computador para usar o novo sistema? Instalando o carregador de inicialização Layout do teclado Layout de teclado:  Idioma Idioma:  Layout Localização Localizando pacotes Modelo Ponto de montagem Montando %(partition)s em %(mountpoint)s Para que o update-initramfs funcione corretamente em alguns casos (como o dm-crypt), você precisa ter as partições montadas usando os mesmos nomes de dispositivos que aparecem em /target/etc/fstab. Visão Geral Particionando Nome completo:  Removendo configuração live (pacotes) Fuso Horário selecionado Definindo o nome do host Definindo opções de teclado Definindo localizações Tamanho Resumo Configurações do sistema A partição EFI é muito pequena. Ela deve ter pelo menos 100MB A partição EFI deve ser formatada como vfat Esta imagem representa sua conta de usuário. Ela é usada na tela de login e em alguns outros lugares. Fuso horário Fuso horário:  Tipo Informações do usuário Configurações de usuário Nome de usuário:  Variável Você selecionou gerenciar suas partições manualmente, esta função é SOMENTE PARA USUÁRIOS AVANÇADOS. Seu nome completo Sua senha Sua foto Seu nome de usuário 