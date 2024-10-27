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
alias tmp='pushd $(TMPDIR=${HOME}/.local/tmp mktemp -d)'

# GitHub tools
alias myrepo='gh repo list --json name --jq ".[].name" --no-archived | peco | xargs ghq get'
alias cdrepo='pushd $(ghq root)/$(ghq list | peco)'

