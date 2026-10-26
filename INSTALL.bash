#!/usr/bin/env bash
set -eu

# valid dotfiles directory path?
[[ "$(cd "$(dirname "$0")" && pwd)" == "$HOME/dotfiles" ]] || exit 78
# command exists?
type stow > /dev/null

# Ensure Filesystem Hierarchy
## XDG Base Directory
## https://specifications.freedesktop.org/basedir/latest
# shellcheck disable=SC1091
. "./shell/dot-config/shell/xdg.env.sh"
## "xdg.env.sh" MUST export all of these env-vars.
##   don't use default assignment syntax.
mkdir -p "${XDG_CONFIG_HOME}" \
	"${XDG_DATA_HOME}" \
	"${XDG_STATE_HOME}" \
	"${HOME}/.local/bin" \
	"${XDG_CACHE_HOME}"

# stow
# shellcheck disable=SC2035
stow */

# install ssh-config
## make .ssh directory if not exist
[[ -d ${HOME}/.ssh ]] || mkdir "${HOME}/.ssh" && chmod 700 "${HOME}/.ssh"
## copy ssh-config if not exist
[[ -f ${HOME}/.ssh/config ]] || cp ssh-config "${HOME}/.ssh/config" && chmod 600 "${HOME}/.ssh/config"
## touch empty local config if not exist
[[ -f ${HOME}/.ssh/config-local ]] || touch "${HOME}/.ssh/config-local" && chmod 600 "${HOME}/.ssh/config-local"

# ensure .gitconfig.local
[[ -f ${HOME}/.gitconfig.local ]] || touch "${HOME}/.gitconfig.local" && chmod 644 "${HOME}/.gitconfig.local"

