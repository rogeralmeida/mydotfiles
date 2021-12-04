#!/bin/bash

# We don't need return codes for "$(command)", only stdout is needed.
# Allow `[[ -n "$(command)" ]]`, `func "$(command)"`, pipes, etc.
# shellcheck disable=SC2312

set -u

# Fail fast with a concise message when not using bash
# Single brackets are needed here for POSIX compatibility
# shellcheck disable=SC2292
if [ -z "${BASH_VERSION:-}" ]
then
  abort "Bash is required to interpret this script."
fi

echo " Ask for the administrator password upfront."
sudo -v

# Requires root
os=$(sw_vers -productVersion | awk -F. '{print $1 "." $2}')
if softwareupdate --history | grep --silent "Command Line Tools.*${os}"; then
    echo 'Command-line tools already installed.'
else
    echo 'Installing Command-line tools...'
    in_progress=/tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
    touch ${in_progress}
    product=$(softwareupdate --list | awk "/\* Command Line.*${os}/ { sub(/^   \* /, \"\"); print }")
    softwareupdate --verbose --install "${product}" || echo 'Installation failed.' 1>&2 && rm ${in_progress} && exit 1
    rm ${in_progress}
    echo 'Installation succeeded.'
fi

echo "git clone mydotfiles"
git clone git@github.com:rogeralmeida/mydotfiles.git ~/mydotfiles

echo "here we go..."
sh ~/mydotfiles/mac.sh