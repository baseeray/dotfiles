# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/human/.zshrc'

EDITOR=nvim
VISUAL=${EDITOR}
BROWSER=brave
RANGER_LOAD_DEFAULT_RC=false

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

plugins=()
source $ZSH/oh-my-zsh.sh

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Helpful aliases
alias  c='clear' # clear terminal
alias  l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias un='$aurhelper -Rns' # uninstall package
alias up='$aurhelper -Syu' # update system/package/aur
alias pl='$aurhelper -Qs' # list installed package
alias pa='$aurhelper -Ss' # list availabe package
alias pc='$aurhelper -Sc' # remove unused cache
alias po='$aurhelper -Qtdq | $aurhelper -Rns -' # remove unused packages, also try > $aurhelper -Qqd | $aurhelper -Rsu --print -
alias vc='code --ozone-platform-hint=wayland --disable-gpu' # gui code editor
alias r='. ranger'

# Pure prompt
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

#Display Pokemon
# pokemon-colorscripts --no-title -r 1,3,6


pfetch
