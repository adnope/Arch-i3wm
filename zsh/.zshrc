# Created by newuser for 5.9
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="xiong-chiamiov-plus"
ZSH_THEME="dracula"
plugins=( 
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
eval "$(fzf --zsh)"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias uzsh="source ~/.zshrc"
alias ff="fastfetch"
alias c="clear"
alias h="history"
alias cff="clear & fastfetch"
alias zshconfig="nano .zshrc"
alias vimzsh="vim .zshrc"
alias syu="sudo pacman -Syu"
alias i3config="vim .config/i3/config"
alias cd="z"
alias ins="sudo pacman -S"
alias upd="sudo pacman -Syu"
alias remv="sudo pacman -Rsc"

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT4_IM_MODULE=ibus
export CLUTTER_IM_MODULE=ibus
ibus-daemon -drx

eval "$(zoxide init zsh)"
