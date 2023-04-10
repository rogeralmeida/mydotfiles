#!/bin/bash

function install_cask_package {
	echo "Installing cask ${@}"
	brew list --cask "${@}" 2>/dev/null || brew install --cask "${@}"
}


echo "installing cask packages"
cat ~/mydotfiles/Cask.manifest | while read line; do
	install_cask_package "${line}"
done
