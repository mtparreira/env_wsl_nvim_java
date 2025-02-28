## Sistema Operacional

Instale o Arch Linux através da Microsoft Store para WSL.

## Mapa de Caracteres

Instale no Windows uma Nerdfont de sua escolha em [Nerdfonts](https://www.nerdfonts.com).

Configure para uso no Terminal.

Sugestão de fonte: **RobotoMono Nerd Font** ou **JetBrainsMono Nerd Font**.

## Pacotes

```sh
sudo pacman -Syuu

sudo pacman -S base-devel git make gdu bottom openssh inetutils

sudo pacman -S python python-pip python-ipykernel python-pynvim

sudo pacman -S zsh unzip npm cargo ripgrep lazygit neovim

sudo pacman -S docker docker-compose
```

## SSH

```sh
ssh-keygen -t ed25519 -C <seu-email>
```

## GIT

```sh
git config --global user.name "<seu-nome>"

git config --global user.email <seu-mail>
```

## Pastas

```sh
mkdir $HOME/packages

mkdir $HOME/downloads

mkdir $HOME/workspace
```

## ZSH

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

sudo pacman -S powerline powerline-fonts
```

## ASTRONVIM

[Site Oficial](https://astronvim.com)

```sh
cd $HOME

git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim

rm -rf ~/.config/nvim/.git

cd $HOME/.config/nvim

nvim .
```

Via Mason instale os seguintes pacotes:

```sh
:MasonInstall google-java-format prettier xmlformatter sql-formatter json-lsp
```

Atualize o ambiente:

```sh
:AstroUpdate

:Lazy update
```

## DOWNLOADS

Baixe o pacote JAVA de sua preferência, MAVEN e o repositório deste projeto na pasta downloads:

### JAVA

- [Oracle](https://www.oracle.com)
- [GraalVM](https://www.graalvm.org)
- [OpenJDK](https://openjdk.org) (usaremos este)

### MAVEN

- [Apache Maven](https://maven.apache.org/download.cgi)

```sh
cd $HOME/packages

tar -xzvf $HOME/downloads/apache-maven-3.9.9-bin.tar.gz

tar -xzvf $HOME/downloads/openjdk-23.0.2_linux-64_bin.tar.gz
```

### Instalação do Ambiente

```sh
cd $HOME/downloads

git clone https://github.com/mtparreira/env_wsl_nvim_java.git

cd env_wsl_nvim_java

sh install.sh
```

Reinicie o terminal para finalizar as configurações do ZSH e variáveis de ambiente.

### Debug

```sh
cd $HOME/workspace

tar -xzvf ../downloads/env_wsl_nvim_java/demo.tar.gz

cd demo

nvim .
```

A primeira execução irá carregar as dependências.

Feche a IDE e abra novamente para habilitar o DAP.

- F9 breakpoint

- F5 start debug

##### @mtparreira

Divirta-se :)
