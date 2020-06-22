# Colors palette:
#for i in {1..256}; do echo ${FG[$i]} color $i -- hey nice color; done
#
if [ "$USER" = "root" ]
then CARETCOLOR="${fg[red]}"
else CARETCOLOR="$FG[111]"
fi

# Don't show right prompt
#local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%m%{${fg_bold[magenta]}%}::%{$reset_color%}%{${fg[green]}%}%2~ $(git_prompt_info)%{${reset_color}%}%{$CARETCOLOR%}$ %{${reset_color}%}'

# Don't show right prompt
#RPS1='$(vi_mode_prompt_info) ${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[yellow]%}›%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔"

MODE_INDICATOR="%{$fg_bold[magenta]%}<%{$reset_color%}%{$fg[magenta]%}<<%{$reset_color%}"

# TODO use 265 colors
#MODE_INDICATOR="$FX[bold]$FG[020]<$FX[no_bold]%{$fg[blue]%}<<%{$reset_color%}"
# TODO use two lines if git
