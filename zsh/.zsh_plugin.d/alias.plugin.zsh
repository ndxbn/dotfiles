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
alias temp='pushd $(mktempdir)'

