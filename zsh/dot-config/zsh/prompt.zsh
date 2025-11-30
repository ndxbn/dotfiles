autoload -Uz vcs_info
autoload -U colors && colors
setopt promptsubst

zstyle ':vcs_info:*' formats '%b'

precmd () {
  vcs_info

  # 右の PROMPT
  STATUS=$(command git status --porcelain 2> /dev/null | tail -n1)
  if [[ -n $STATUS ]]; then
    local git_branch='%F{red}!${vcs_info_msg_0_}'
  else
    local git_branch='%F{green}${vcs_info_msg_0_}'
  fi

  RPROMPT="${git_branch}"
  
  # PROMPT
  # authority とかの用語は、 RFC3986 の ABNF を参照
  ## PROMPT = line1 LF line2
  ## line1 = URI-reference 的なもの
  ##   ; authority='%n%F{cyan}@%f%M'
  ##     ; "@" のみ色変え
  ##   ; path_abempty='%F{cyan}%d%f'
  ##     ; authority 部分と path 部分は、色を変える。
  ## line2 = "%#" SP ; ( is_root ? "#" : "%" ) + space
  local line1='%n%F{cyan}@%f%M%F{cyan}%d%f'
  local line2='%# '

  PROMPT="${line1}
${line2}"
}
