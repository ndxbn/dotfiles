# XDG Base Dirs
hash -d data="${XDG_DATA_HOME}"
hash -d config="${XDG_CONFIG_HOME}"
hash -d state="${XDG_STATE_HOME}"
hash -d cache="${XDG_CACHE_HOME}"
## with "x" prefix
hash -d xdata="${XDG_DATA_HOME}"
hash -d xconfig="${XDG_CONFIG_HOME}"
hash -d xstate="${XDG_STATE_HOME}"
hash -d xcache="${XDG_CACHE_HOME}"

# for zsh scripts
hash -d debuglog="${DEBUG_LOG_DIR}"
hash -d plug="${_ZPLUGIN_DIR}"
## with "z" prefix
hash -d zdebuglog="${DEBUG_LOG_DIR}"
hash -d zplug="${_ZPLUGIN_DIR}"
