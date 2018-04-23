#!/bin/bash
set -eu

# install Home Brew
# https://brew.sh/
if ! type brew  > /dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install via brew
brew install \
  bc \
  curl \
  docker-compose \
  hub \
  gawk \
  gnu-sed \
  jq \
  util-linux \
  tmux \
  wget \
  zsh

brew cask install \
  docker \
  iterm2

# install zplug
export ZPLUG_HOME=~/.zplug
if [[ ! -e ${ZPLUG_HOME} ]]; then
  git clone https://github.com/zplug/zplug ${ZPLUG_HOME}
fi
