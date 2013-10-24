PROMPT='%{$fg[cyan]%}%~
%{$fg_bold[red]%}%m$%{$fg_bold[green]%}%p % %{$reset_color%}'
export RPROMPT='%{$fg_bold[blue]%}$(git_cwd_info)%{$fg_bold[blue]%} %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
