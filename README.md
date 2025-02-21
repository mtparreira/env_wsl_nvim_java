# README

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

Reinicie o terminal para finalizar as configurações do ZSH.

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
```

## DOWNLOADS

Baixe o pacote JAVA de sua preferência, MAVEN e o repositório deste projeto na pasta downloads:

### JAVA

- [OpenJDK](https://openjdk.org)
- [Oracle](https://www.oracle.com)
- [GraalVM](https://www.graalvm.org)

### MAVEN

- [Apache Maven](https://maven.apache.org/download.cgi)

### PROJETO

```sh
git clone <repositório-do-projeto>
```

```sh
cd $HOME/packages

tar -xzvf $HOME/downloads/apache-maven-3.9.9-bin.tar.gz

tar -xzvf $HOME/downloads/jdk-21_linux-x64_bin.tar.gz
```
