#!/usr/bin/env bash
set -ue
git clone http://github.com/ndxbn/dotfiles ~/dotfiles
cd ~/dotfiles
rm -rf install.sh LICENSE README.md .gitignore .git
rsync -avh --no-perms . ~
source ~/.bash_profile
