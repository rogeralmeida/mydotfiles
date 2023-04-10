#!/bin/bash
set -e
set -x

function install_brew_package {
	echo "Installing brew ${@}"
	brew install --formula "${@}" || true
}

echo "installing brew packages"
cat ~/mydotfiles/Homebrew.manifest | while read line; do
	install_brew_package "${line}"
done
