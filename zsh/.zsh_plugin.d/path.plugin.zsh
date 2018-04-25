if [ "Darwin" = $(uname -s) ]; then
  ## coreutils
  PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
  ## findutils
  PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
  MANPATH="/usr/local/opt/findutils/libexec/gnuman:$MANPATH"
fi

PATH="${HOME}/.local/.bin:${HOME}/bin:${PATH}"
PATH="./node_modules/.bin:${PATH}"
PATH="./vendor/bin:${PATH}"

