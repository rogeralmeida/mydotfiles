#!/bin/bash

BREW_TYPE=`type brew`
if [ -z "${BREW_TYPE}" ]; then
	echo "Installing Homebrew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing brew packages"
HOMEBREW_MANIFEST="Homebrew.manifest"
while read -r PACKAGE
do
	brew install ${PACKAGE}
done < "${HOMEBREW_MANIFEST}"

