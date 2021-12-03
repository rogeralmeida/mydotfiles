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

echo "Installing xcode cli tools"
xcode-select --install

echo "git clone mydotfiles"
git clone git@github.com:rogeralmeida/mydotfiles.git ~/mydotfiles

echo "here we go..."
sh ~/mydotfiles/mac.sh