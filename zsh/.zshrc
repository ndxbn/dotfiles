# zsh options
## history
HISTSIZE=1000000000
SAVEHIST=1000000000
HISTFILE=~/.zsh_history

# PATH
PATH="${HOME}/.local/.bin:${HOME}/bin:${PATH}"
PATH="./node_modules/.bin:${PATH}"
PATH="./vendor/bin:${PATH}"

# zplug
source ~/.zplug/init.zsh

zplug "zplug/zplug", hook-build:zplug\ --self-manage

zplug "~/.zsh_plugin.d", from:local
zplug "~/.zsh_theme.d", from:local, as:theme

zplug "Tarrasch/zsh-bd"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
