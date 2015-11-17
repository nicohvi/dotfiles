# chris's prompt

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

directory_prompt() {
  echo "%2~"
}


PROMPT='%{$fg[yellow]%}$(directory_prompt)$(git_prompt_info)%{$reset_color%} %{$fg_bold[blue]%}$ %{$reset_color%}'

