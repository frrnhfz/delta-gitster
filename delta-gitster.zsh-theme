local ret_status="%(?:%{$fg_bold[green]%}δ :%{$fg_bold[red]%}δ %s)"

function get_pwd() {
    git_root=$PWD

    while [[ $git_root != / && ! -e $git_root/.git ]]; do
        git_root=$git_root:h
    done

    if [[ $git_root = / ]]; then
        unset git_root
        prompt_short_dir=%~
    else
        parent=${git_root%\/*}
        prompt_short_dir=${PWD#$parent/}
    fi

    echo $prompt_short_dir
}

function git_prompt() {
    if [[ -e $git_prompt_info ]]; then
        prompt_git=""
    else
        prompt_git=$git_prompt_info
    fi

    echo $prompt_git
}

PROMPT='$ret_status%{$fg[white]%}$(get_pwd)$(git_prompt)%{$reset_color%}%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✓%{$reset_color%}"
