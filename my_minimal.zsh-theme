# cwd, git, and last exit code

SETMAGENTA=%{$fg_bold[magenta]%}
SETGREEN=%{$fg_no_bold[green]%}
SETRED=%{$fg_bold[red]%}

ZSH_THEME_GIT_PROMPT_DIRTY=" ●"
ZSH_THEME_GIT_PROMPT_PREFIX=' \ue0a0 '
ZSH_THEME_GIT_PROMPT_SUFFIX=""

function check_last_exit_code() {
  local LAST_EXIT_CODE=$?
  if [[ $LAST_EXIT_CODE -ne 0 ]]; then
    local EXIT_CODE_PROMPT=' '
    EXIT_CODE_PROMPT+="%{$fg[red]%}-%{$reset_color%}"
    EXIT_CODE_PROMPT+="%{$fg_no_bold[red]%}$LAST_EXIT_CODE%{$reset_color%}"
    EXIT_CODE_PROMPT+="%{$fg[red]%}-%{$reset_color%}"
    echo "$EXIT_CODE_PROMPT"
  fi
}

PROMPT=' $SETRED%~%b $SETMAGENTA» %{$reset_color%}'
RPROMPT='$(check_last_exit_code)$SETGREEN$(git_prompt_info)%{$reset_color%}'
PS2=' $SETBLUE>%b '
