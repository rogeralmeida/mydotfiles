#!/bin/bash

if [ ! `which brew` ]; then
	echo "Installing brew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

function install_brew_package {
	echo "Installing brew ${@}"
	brew install "${@}"
}

function install_cask_package {
	echo "Installing cask ${@}"
	brew cask install "${@}"
}


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
brew upgrade --all

echo "installing brew packages"
cat ~/mydotfiles/Homebrew.manifest | while read line; do
	install_brew_package "${line}"
done

echo "installing cask packages"
cat ~/mydotfiles/Cask.manifest | while read line; do
	install_cask_package "${line}"
done

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

echo "Cleaning up brew"
brew cleanup
brew linkapps

echo "Installing solarized theme"
if [ ! -f ~/solarized.zip ]; then
	wget -O ~/solarized.zip http://ethanschoonover.com/solarized/files/solarized.zip
fi

if [ ! -f ~/solarized/iterm2-colors-solarized/Solarized\ Dark.itermcolors ]; then
  unzip ~/solarized.zip -d ~/
  open ~/solarized/iterm2-colors-solarized/Solarized\ Dark.itermcolors
fi

if [ ! -d ~/.bash-git-prompt ]; then
	echo "Installing bash-git-prompt"
	git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt
fi

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
	echo "Installing Vundle"
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
