# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Definindo o tema do Oh My Zsh para Powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

# Ativando plugins do Oh My Zsh
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Configuração do histórico
HISTSIZE=10000
SAVEHIST=10000
HISTCONTROL=ignoredups:erasedups

# Enable Powerlevel10k settings (após a instalação do tema)
source $HOME/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# Carregar plugins
source $HOME/.oh-my-zsh/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

cd $HOME
