function gitignore() {
	# shellcheck disable=SC2296
	curl -fLw '\n' https://www.toptal.com/developers/gitignore/api/"${(j:,:)@}"
}

_gitignoreio_get_command_list() {
	curl -sfL https://www.toptal.com/developers/gitignore/api/list | tr "," "\n"
}

_gitignoreio () {
	compset -P '*,'
	compadd -S '' $(_gitignoreio_get_command_list)
}

compdef _gitignoreio gitignore
