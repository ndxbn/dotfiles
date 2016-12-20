#!/usr/bin/env bash
if ! hash git >& /dev/null; then
  logger -s git command was not found.
  exit 1
fi

cd ~
mkdir ndxbn && cd ndxbn
git clone https://github.com/ndxbn/dotfiles.git
cd dotfiles
bash install.sh