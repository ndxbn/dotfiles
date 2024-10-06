setopt no_global_rcs

# PATH, MANPATH
## system wide
typeset -gx PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin'
##
if [ "Darwin" = $(uname -s) ]; then
  ## homebrew
  HOMEBREW_PREFIX="/opt/homebrew";
  HOMEBREW_CELLAR="/opt/homebrew/Cellar";
  HOMEBREW_REPOSITORY="/opt/homebrew";
  PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
  MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
  INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
  FPATH="/opt/homebrew/share/zsh/site-functions:${FPATH}"
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
## user land
PATH="${HOME}/.local/bin:${HOME}/bin:${PATH}"
### anyenv
PATH="${HOME}/.anyenv/bin:${PATH}"
## under current directory
PATH="./node_modules/.bin:${PATH}"
PATH="./vendor/bin:${PATH}"

#
EDITOR="vim"
TERMINFO="${HOME}/.terminfo"
PREFIX="${HOME}/.local"

ZPLUG_HOME="${HOME}/.zplug"

DOCKER_CONTENT_TRUST=1

LC_ALL="en_US.UTF-8"
LC_LANG="en_US"

ENV="development"
NODE_ENV="development"
