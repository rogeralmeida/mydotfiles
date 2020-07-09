#!/bin/bash

function install_cask_package {
	echo "Installing cask ${@}"
	brew cask list "${@}" || brew cask install "${@}"
}


echo "installing cask packages"
cat ~/mydotfiles/Cask.manifest | while read line; do
	install_cask_package "${line}"
done
