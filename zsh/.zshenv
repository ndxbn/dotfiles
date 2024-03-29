setopt no_global_rcs

# PATH, MANPATH
## system wide
typeset -gx PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin'
##
if [ "Darwin" = $(uname -s) ]; then
  ## coreutils
  PATH="/usr/local/opt/coreutils/libexec/gnubin:${PATH}"
  MANPATH="/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}"
  ## findutils
  PATH="/usr/local/opt/findutils/libexec/gnubin:${PATH}"
  MANPATH="/usr/local/opt/findutils/libexec/gnuman:${MANPATH}"
  ## gnu-sed
  PATH="/usr/local/opt/gnu-sed/libexec/gnubin:${PATH}"
  MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:${MANPATH}"
  ## gettext
  PATH="/usr/local/opt/gettext/bin:$PATH"
  MANPATH="/usr/local/opt/gettext/share/man:${MANPATH}"
fi
## user land
PATH="${HOME}/.local/bin:${HOME}/bin:${PATH}"
### anyenv
PATH="${HOME}/.anyenv/bin:${PATH}"
## under current directory
PATH="./node_modules/.bin:${PATH}"
PATH="./vendor/bin:${PATH}"

#
EDITOR="vi"

TERMINFO=~/.terminfo

ZPLUG_HOME=~/.zplug

DOCKER_CONTENT_TRUST=1

LC_ALL="en_US.UTF-8"
LC_LANG="en_US"

ENV="development"
NODE_ENV="development"
