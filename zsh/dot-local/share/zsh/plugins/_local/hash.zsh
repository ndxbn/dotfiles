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

# shortcut links
hash -d logs="${DEBUG_LOG_DIR}"
hash -d plugins="${_ZPLUGIN_DIR}"

## with "zsh" prefix
hash -d zshdebuglog="${DEBUG_LOG_DIR}"
hash -d zshplugins="${_ZPLUGIN_DIR}"
