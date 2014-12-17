#!/usr/bin/env bash

# Set my editor and git editor
export EDITOR="/usr/bin/vim"
export GIT_EDITOR='/usr/bin/vim'

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
GIT_PROMPT_THEME=Solarized
source ~/.bash-git-prompt/gitprompt.sh

# Custom bash prompt via kirsle.net/wizards/ps1.html
#export PS1="\[$(tput bold)\]\[$(tput setaf 6)\]\t \[$(tput setaf 2)\][\[$(tput setaf 3)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 3)\]\h \[$(tput setaf 6)\]\w\[$(tput setaf 2)\]]\[$(tput setaf 4)\]\n\\$ \[$(tput sgr0)\]"

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

eval "$(fasd --init auto)"

source $HOME/.bash_alias
source $HOME/mydotfiles/java.sh

 [ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
