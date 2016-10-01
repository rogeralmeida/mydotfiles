#!/bin/bash

RUBY_VERSION=2.3.1

log(){
	echo ">>>>>> $1"
}


if [[ $1 == '--force-update' ]]; then
	log "Updating apt-get"
	sudo add-apt-repository ppa:aacebedo/fasd
	sudo apt-get update
fi

log "Installing ubuntu dependencies"
sudo apt-get install -y git build-essential libssl-dev libreadline-dev zlib1g-dev fasd

log "installing rbenv"
[ "$(ls -A ~/.rbenv)" ] && echo "rbenv already installed" || git clone https://github.com/rbenv/rbenv.git ~/.rbenv 

log "Configuring rbenv"
grep -q rbenv ~/.bashrc && echo 'rbenv already in bashrc' || echo 'export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

log "Installing rbenv-build"
[ "$(ls -A ~/.rbenv/plugins/ruby-build)" ] && echo "rbenv-build already installed" || git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

. ~/.bashrc

log "installing Ruby"
~/.rbenv/bin/rbenv versions | [ "$(grep -c $RUBY_VERSION -)" -ge 1 ] && echo "Ruby $RUBY_VERSION already installed" || ~/.rbenv/bin/rbenv install 2.3.1

mkdir -p ~/code/auction

log "Installing bash-git-prompt"
[ "$(ls -A ~/.bash-git-prompt)" ] && echo "bash-git-prompt already installed" || git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

log "Bringing dot files conffigurations"
[ "$(ls -A ~/mydotfiles)" ] && echo "mydotfiles already installed" || git clone https://github.com/rogeralmeida/mydotfiles.git ~/mydotfiles
grep -q mydotfiles ~/.bashrc && echo 'mydotfiles already in bashrc' || echo 'source "$HOME/mydotfiles/.bash_profile"' >> ~/.bashrc

log "Installing Vundle"
[ "$(ls -A ~/.vim/bundle/Vundle.vim)" ] && log "Vundle already installed" || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
