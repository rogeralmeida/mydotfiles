#!/bin/bash

RUBY_VERSION=2.6.3

log(){
	echo ">>>>>> $1"
}

log "Installing ubuntu dependencies"
. apt-get-install.sh 

log "Installing howdoi..."
howdoi pip install
sudo pip install --upgrade youtube_dl

log "Installing Node libraries"
npx add-gitignore
npm install -g tldr
npm install -g @rafaelrinaldi/whereami

log "installing rbenv"
[ "$(ls -A ~/.rbenv)" ] && echo "rbenv already installed" || git clone https://github.com/rbenv/rbenv.git ~/.rbenv 

log "Configuring rbenv"
grep -q rbenv ~/.bashrc && echo 'rbenv already in bashrc' || echo 'export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

log "Installing rbenv-build"
[ "$(ls -A ~/.rbenv/plugins/ruby-build)" ] && echo "rbenv-build already installed" || git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

. ~/.bashrc

log "installing Ruby"
~/.rbenv/bin/rbenv versions | [ "$(grep -c $RUBY_VERSION -)" -ge 1 ] && echo "Ruby $RUBY_VERSION already installed" || ~/.rbenv/bin/rbenv install $RUBY_VERSION

log "Installing bash-git-prompt"
[ "$(ls -A ~/.bash-git-prompt)" ] && echo "bash-git-prompt already installed" || git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

log "Bringing dot files conffigurations"
[ "$(ls -A ~/mydotfiles)" ] && echo "mydotfiles already installed" || git clone https://github.com/rogeralmeida/mydotfiles.git ~/mydotfiles
grep -q mydotfiles ~/.bashrc && echo 'mydotfiles already in bashrc' || echo 'source "$HOME/mydotfiles/.bash_profile"' >> ~/.bashrc

rm /.vim
rm /.vimrc
ln -s ~/mydotfiles/.vim ~/.vim
ln -s "$HOME/mydotfiles/.vim/.vimrc" "$HOME/.vimrc"
cd ~/mydotfiles
git submodule update --init .
cd ~

log "Installing Vundle"
[ "$(ls -A ~/.vim/bundle/Vundle.vim)" ] && log "Vundle already installed" || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

log "Configuring git"
git config --global user.email "roger.eduardo@gmail.com"
git config --global user.name "Roger Almeida"
