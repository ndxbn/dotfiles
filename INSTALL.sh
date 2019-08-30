#!/usr/bin/env bash
set -eu

# comman exists?
type stow

stow */

# install ssh-config
## backup ssh-config if exists
pushd ${HOME}/.ssh
if [ -f config ]
then
  if [ -f config.backup ]
  then
    echo config.backup is exists. clean your dot-ssh directory
    exit 1
  fi

  mv config config.backup
fi
popd
## copy ssh-config
cp ssh-config ${HOME}/.ssh/config
chmod 600 ${HOME}/.ssh/config
## touch empty local config if not exist
[[ -f ${HOME}/.ssh/config-local ]] || touch ${HOME}/.ssh/config-local && chmod 600 ${HOME}/.ssh/config-local
