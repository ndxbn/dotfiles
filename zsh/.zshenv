setopt no_global_rcs

# PATH, MANPATH
## system wide
typeset -gx PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin'
##
if [ "Darwin" = $(uname -s) ]; then
  ## homebrew
  export HOMEBREW_PREFIX="/opt/homebrew";
  export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
  export HOMEBREW_REPOSITORY="/opt/homebrew";
  PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
  export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
  export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
  export FPATH="/opt/homebrew/share/zsh/site-functions:${FPATH}"
  ## gnubin
  ### coreutils
  PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
  ### findutils
  PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"
  ### gnu-sed
  PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
  ## gettext
  PATH="/opt/homebrew/opt/gettext/bin:$PATH"
  ## podman
  PATH="/opt/podman/bin/:${PATH}"
fi

## Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

## user land
PATH="${BUN_INSTALL}/bin:${HOME}/.local/bin:${HOME}/bin:${HOME}/.brew/bin:${PATH}"
### anyenv
PATH="${HOME}/.anyenv/bin:${PATH}"
## under current directory
PATH="./node_modules/.bin:${PATH}"
PATH="./vendor/bin:${PATH}"
export PATH="${PATH}"

#
export EDITOR="vim"
export TERMINFO="${HOME}/.terminfo"
export PREFIX="${HOME}/.local"
export TMPDIR="${HOME}/.local/tmp"

export ZPLUG_HOME="${HOME}/.zplug"

export DOCKER_CONTENT_TRUST=1

export LC_ALL="en_US.UTF-8"
export LC_LANG="en_US"

export ENV="development"
export NODE_ENV="development"
