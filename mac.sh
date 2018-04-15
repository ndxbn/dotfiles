#!/bin/bash
set -eu

if [ -e ~/.local/dotfiles ]; then
  echo You have run dotfile installer yet.
  exit 1
fi

mkdir -p ~/.local && touch ~/.local/dotfiles

# install Home Brew
# https://brew.sh/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install via brew
brew install \
  bc \
  curl \
  docker-compose \
  gawk \
  gnu-sed \
  jq \
  util-linux \
  tmux \
  wget \
  zsh

brew cask install \
  docker

# install zplug
export ZPLUG_HOME=~/.zplug
git clone https://github.com/zplug/zplug ${ZPLUG_HOME}
