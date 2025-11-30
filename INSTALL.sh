#!/usr/bin/env bash
set -eu

# valid dotfiles directory path?
[[ "$(cd "$(dirname "$0")" && pwd)" == "$HOME/dotfiles" ]] || exit 78
# command exists?
type stow

# Ensure Filesystem Hierarensure
## XDG Base Directory
## https://specifications.freedesktop.org/basedir/latest
. "./shell/dot-config/shell/xdg.env.sh"
## "xdg.env.sh" MUST export all of these env-vars.
##   don't use default assignment syntax.
mkdir -v -p "${XDG_CONFIG_HOME}" \
	"${XDG_DATA_HOME}" \
	"${XDG_STATE_HOME}" \
	"${XDG_CACHE_HOME}" \
	"${HOME}/.local/bin"

## XDG User Directories
## https://www.freedesktop.org/wiki/Software/xdg-user-dirs/
## "usr-dirs.dirs" file might exist if OS have XDG template in home directory skelton.
USER_DIRS_FILE="${XDG_CONFIG_HOME:-$HOME/.config}/user-dirs.dirs"
# shellcheck source=/dev/null
[[ -f "$USER_DIRS_FILE" ]] && . "$USER_DIRS_FILE"
## fill with default
: "${XDG_DESKTOP_DIR:=$HOME/Desktop}"
: "${XDG_DOWNLOAD_DIR:=$HOME/Downloads}"
: "${XDG_TEMPLATES_DIR:=$HOME/Templates}"
: "${XDG_PUBLICSHARE_DIR:=$HOME/Public}"
: "${XDG_DOCUMENTS_DIR:=$HOME/Documents}"
: "${XDG_MUSIC_DIR:=$HOME/Music}"
: "${XDG_PICTURES_DIR:=$HOME/Pictures}"
: "${XDG_VIDEOS_DIR:=$HOME/Videos}"
mkdir -v -p \
	"$XDG_DESKTOP_DIR" \
	"$XDG_DOWNLOAD_DIR" \
	"$XDG_TEMPLATES_DIR" \
	"$XDG_PUBLICSHARE_DIR" \
	"$XDG_DOCUMENTS_DIR" \
	"$XDG_MUSIC_DIR" \
	"$XDG_PICTURES_DIR" \
	"$XDG_VIDEOS_DIR"
ls -al ../

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

