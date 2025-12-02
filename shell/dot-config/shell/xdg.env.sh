# shellcheck shell=bash
## XDG Base Directory
## https://specifications.freedesktop.org/basedir/latest
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_STATE_HOME="${HOME}/.local/state"
export PATH="${HOME}/.local/bin:${PATH}"
export XDG_CACHE_HOME="${HOME}/.cache"

# You SHOULD NOT set XDG_XXX_DIRS env vars. They MAY be set by OS level operation.

