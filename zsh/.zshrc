umask 022

# zsh options
## history
HISTSIZE=1000000000
SAVEHIST=1000000000
HISTFILE=~/.zsh_history

# zplug
source ~/.zplug/init.zsh

## loader
zplug "~/.zsh_plugin.d", from:local
zplug "~/.zsh_theme.d", from:local, as:theme

## suggestions / completions
zplug "chrissicool/zsh-256color"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "plugins/docker", from:oh-my-zsh

## plugins
zplug "Tarrasch/zsh-bd"
zplug "arzzen/calc.plugin.zsh"
zplug "popstas/zsh-command-time"

## commands
zplug "github/hub", from:gh-r, as:command
zplug "stedolan/jq", from:gh-r, as:command
zplug "peco/peco", from:gh-r, as:command

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose

