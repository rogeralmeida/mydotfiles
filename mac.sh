#!/bin/bash

if [ ! `which brew` ]; then
	echo "Installing brew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Changing the bash_profile"
rm ~/.bash_profile
ln -s ~/mydofiles/.bash_profile ~/.bash_profile
ln -s ~/mydotfiles/vim/.vimrc ~/.vimrc

echo " Ask for the administrator password upfront."
sudo -v

echo " Keep-alive: update existing `sudo` time stamp until the script has finished."
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Brew at work"
brew tap homebrew/versions
brew tap phinze/homebrew-cask

echo " Make sure we’re using the latest Homebrew."
brew update

echo " Upgrade any already-installed formulae."
brew upgrade

./macInstallBrew.sh
./macInstallCask.sh

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

echo "Cleaning up brew"
brew cleanup
brew linkapps

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
	echo "Installing Vundle"
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "Installing oh-my-z shell"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing my favourite oh-my-zsh plugins"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

ln -s ~/mydofiles/.zshrc ~/.zshrc

echo "Installing tmux configuration"
git clone https://github.com/gpakosz/.tmux.git ~/.tmux
ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf
ln -s -f ~/.tmux/.tmux.conf.local ~/.tmux.conf.local

source extensions.sh
