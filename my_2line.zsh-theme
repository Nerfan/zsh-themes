# cwd, history, and time

SETBLUE=%{$fg_bold[blue]%}
SETYELLOW=%{$fg_no_bold[yellow]%}
SETGREEN=%{$fg_no_bold[green]%}
SETRED=%{$fg_bold[red]%}

ZSH_THEME_GIT_PROMPT_DIRTY=" ●"
ZSH_THEME_GIT_PROMPT_PREFIX='\ue0a0 '
ZSH_THEME_GIT_PROMPT_SUFFIX=""

PROMPT='$SETBLUE┌─ [$SETYELLOW%!$SETBLUE] %b$SETRED%~ %b%{$reset_color%}$SETGREEN$(git_prompt_info)
$SETBLUE└─%b '
RPROMPT='[%*]'
PS2=' %{$fg_bold[blue]%}>%b '
