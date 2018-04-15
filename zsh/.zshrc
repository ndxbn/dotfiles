# zsh options
## history
HISTSIZE=1000000000
SAVEHIST=1000000000
HISTFILE=~/.zsh_history

# zplug
source ~/.zplug/init.zsh

zplug "zplug/zplug", hook-build:zplug\ --self-manage
zplug "~/.zsh-plugins", from:local

zplug "Tarrasch/zsh-bd"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
