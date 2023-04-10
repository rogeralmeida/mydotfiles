#!/bin/bash

# Set the colours you can use
black='\033[0;30m'
white='\033[0;37m'
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'

# Resets the style
reset=`tput sgr0`

# Color-echo. Improved. [Thanks @joaocunha]
# arg $1 = message
# arg $2 = Color
cecho() {
  echo -e "${2} ${1} ${reset}"
  return
}

# These came from https://gist.github.com/brandonb927/3195465
cecho "First lets change some general mac config" $blue
cecho "Expanding the save panel by default" $green
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

echo ""
cecho "Disable Photos.app from starting everytime a device is plugged in" $green
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

echo ""
cecho "Show icons for hard drives, servers, and removable media on the desktop" $green
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

echo ""
cecho "Show hidden files in Finder by default" $green
defaults write com.apple.Finder AppleShowAllFiles -bool true

echo ""
cecho "Show dotfiles in Finder by default" $green
defaults write com.apple.finder AppleShowAllFiles TRUE

echo ""
cecho "Show all filename extensions in Finder by default" $green
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

cecho "Wipe all (default) app icons from the Dock!" $red
cecho "(This is only really useful when setting up a new Mac, or if you don't use the Dock to launch apps.)" $cyan
defaults write com.apple.dock persistent-apps -array

cecho "Changing the bash_profile" $blue
rm ~/.bash_profile
rm ~/.vimrc
ln -s ~/mydofiles/.bash_profile ~/.bash_profile
ln -s ~/mydotfiles/vim/.vimrc ~/.vimrc

cecho " Ask for the administrator password upfront." $red
sudo -v

cecho " Keep-alive: update existing `sudo` time stamp until the script has finished." $yellow
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if [ ! `which brew` ]; then
	cecho "Installing brew" $blue
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 	echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo " Make sure we’re using the latest Homebrew."
brew update

echo " Upgrade any already-installed formulae."
brew upgrade

brew install $(<Homebrew.manifest)
brew install $(<Cask.manifest)

cecho "Cleaning up brew" $red
brew cleanup
brew linkapps

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
	echo "Installing Vundle"
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "Installing oh-my-z shell"
if [ -d ~/.oh-my-zsh ]; then
	echo "oh-my-zsh is installed"
else
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	echo "Installing my favourite oh-my-zsh plugins"
	[ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ] || git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	[ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ] || git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	[ -d "$HOME/.oh-my-zsh/custom/plugins/k" ] || git clone https://github.com/supercrabtree/k $HOME/.oh-my-zsh/custom/plugins/k
	[ -d "$HOME/.oh-my-zsh/custom/themes/powerlevel9k" ] || git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k

	rm $HOME/.zshrc
	ln -sf $HOME/mydotfiles/.zshrc $HOME/.zshrc
fi


echo "Installing tmux configuration"
[ -d $HOME/.tmux ] || git clone https://github.com/gpakosz/.tmux.git $HOME/.tmux
ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf
ln -s -f ~/.tmux/.tmux.conf.local ~/.tmux.conf.local

echo "Installing SDKMAN"
if [ ! `which sdkman` ]; then
	curl -s "https://get.sdkman.io" | bash
fi

echo "Installing NVM"
if [ ! `which nvm` ]; then
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
	nvm install 16.16.0
	nvm use 16.16.0
	npm install -g gitmoji-cli
fi

