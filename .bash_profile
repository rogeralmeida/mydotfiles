#!/usr/bin/env bash

# Set my editor and git editor
export EDITOR="/usr/bin/vim"
export GIT_EDITOR='/usr/bin/vim'


#eval "$(rbenv init -)"
GIT_PROMPT_THEME=Solarized
source ~/.bash-git-prompt/gitprompt.sh


export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

eval "$(fasd --init auto)"

source $HOME/mydotfiles/.bash_alias
source $HOME/mydotfiles/java.sh
source $HOME/mydotfiles/dotenv.sh

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$HOME/mydotfiles/bin:$PATH

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
[[ -f $HOME/mydotfiles/.bash_preexec.sh ]] && source $HOME/mydotfiles/.bash_preexec.sh

