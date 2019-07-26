#!/bin/bash

function install_package {
	echo "Installing apt-get ${@}"
	sudo apt-get install -y "${@}"
}

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-key adv --keyserver pool.sks-keyservers.net --recv 6DDA23616E3FE905FFDA152AE61DA9241537994D
echo "deb https://dl.bintray.com/aluxian/deb <channel> main" | sudo tee -a /etc/apt/sources.list.d/aluxian.list
sudo add-apt-repository ppa:nathan-renniewaldock/flux

sudo add-apt-repository -y ppa:aacebedo/fasd
sudo apt-get update

echo "installing brew packages"
cat ~/mydotfiles/apt-get.manifest | while read line; do
	install_package "${line}"
done

sudo apt-get upgrade
sudo apt autoremove
