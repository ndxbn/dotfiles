# ls family
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -Al'

# default options
alias grep='grep --color'

# another name
alias vim='vi'

# shorthand
alias http-server='docker run -v `pwd`:/usr/share/nginx/html:ro  -p 8080:80 nginx:alpine'
alias tmp='pushd "$(TMPDIR=${HOME}/.local/tmp mktemp -d)"'

# GitHub tools
## "get repo" short name
alias gepo='gh repo list --json nameWithOwner --jq ".[].nameWithOwner" --no-archived | peco | xargs ghq get -p'
alias gepoo='gh repo list ndxbn-tokyo --json nameWithOwner --jq ".[].nameWithOwner" --no-archived | peco | xargs ghq get -p'
alias gepoa='gh repo list akashic-system --json nameWithOwner --jq ".[].nameWithOwner" --no-archived | peco | xargs ghq get -p'
## "cd repo" short name
alias cdpo='pushd "$(ghq root)/$(ghq list | peco)"'

