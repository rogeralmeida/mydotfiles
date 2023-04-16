#!/usr/bin/env bash

# Set my editor and git editor
export EDITOR="/usr/bin/vim"
export GIT_EDITOR='/usr/bin/vim'


#eval "$(rbenv init -)"
#GIT_PROMPT_THEME=Solarized
#source ~/.bash-git-prompt/gitprompt.sh

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad


export PATH=$HOME/mydotfiles/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

source $HOME/mydotfiles/.bash_alias
source $HOME/mydotfiles/java.sh
source $HOME/mydotfiles/dotenv.sh
source $HOME/mydotfiles/lib/git.sh
source $HOME/mydotfiles/lib/files.sh

export CUCUMBER_COLORS=comment=cyan
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

[[ -f $HOME/mydotfiles/.bash_preexec.sh ]] && source $HOME/mydotfiles/.bash_preexec.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(fasd --init auto)"

export PATH="/usr/local/sbin:$PATH"

export NOTE_PATH="/Users/ralmeida/code/notes"
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi
