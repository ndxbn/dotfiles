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
alias httpd='docker run -v `pwd`:/usr/share/nginx/html:ro -p 8080:80 nginx:alpine'
alias tmp='pushd "$(TMPDIR=${HOME}/.local/tmp mktemp -d)"'
alias venv='python3 -m venv venv && source ./venv/bin/activate'
alias ty='whence -p'
# print something
alias pP='echo ${PATH} | sed -e "s/:/\n/g"'
alias pF='echo ${FPATH} | sed -e "s/:/\n/g"'
alias ec='echo $?' # echo Exit Code

# util
alias now='date -Is'
# zprof
alias zprofstart='zmodload zsh/zprof'
alias zprofend='zmodload -u zsh/zprof'
# git trace2 perf
alias gitprofstart='export GIT_TRACE2_PERF=${HOME}/git_trace2.log'
alias gitprof='cat ${GIT_TRACE2_PERF}'
alias gitprofreset=': > ${GIT_TRACE2_PERF}'
alias gitprofend='export GIT_TRACE2_PERF=0'

# AWS
alias awlogin='for prof in $(aws configure list-profiles | xargs echo); do aws sso login --profile ${prof} & ; done'
alias awprofile='export AWS_PROFILE=$(aws configure list-profiles | peco)'

# ssh into EC2 instance
awssh() {
	# get EC2 instances as names and select one
	# resolve instance id (i-nnnn)
	# ssh into it
}
