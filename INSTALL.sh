#!/usr/bin/env bash
set -eu

# comman exists?
type stow

stow */

# install ssh-config
## make .ssh directory if not exist
[[ -d ${HOME}/.ssh ]] || mkdir ${HOME}/.ssh && chmod 700 ${HOME}/.ssh 
## copy ssh-config if not exist
[[ -f ${HOME}/.ssh/config ]] || cp ssh-config ${HOME}/.ssh/config && chmod 600 ${HOME}/.ssh/config
## touch empty local config if not exist
[[ -f ${HOME}/.ssh/config-local ]] || touch ${HOME}/.ssh/config-local && chmod 600 ${HOME}/.ssh/config-local
