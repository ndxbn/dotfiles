# inspired by https://github.com/zsh-users/antigen/blob/develop/src/lib/log.zsh
zmodload zsh/datetime
_DEBUG_LOG="${DEBUG_LOG_DIR}/zsh_$(date -I).log"
LOG () {
  local PREFIX="[LOG][${EPOCHREALTIME}]"
  echo "${PREFIX} ${funcfiletrace[1]}\n${PREFIX} $@" >> $_DEBUG_LOG
}

ERR () {
  local PREFIX="[ERR][${EPOCHREALTIME}]"
  echo "${PREFIX} ${funcfiletrace[1]}\n${PREFIX} $@" >> $_DEBUG_LOG
}

WARN () {
  local PREFIX="[WRN][${EPOCHREALTIME}]"
  echo "${PREFIX} ${funcfiletrace[1]}\n${PREFIX} $@" >> $_DEBUG_LOG
}

TRACE () {
  local PREFIX="[TRA][${EPOCHREALTIME}]"
  echo "${PREFIX} ${funcfiletrace[1]}\n${PREFIX} $@\n${PREFIX} ${(j:\n:)funcstack}" >> $_DEBUG_LOG
}
