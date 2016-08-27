#!/usr/bin/env bash

SCM_THEME_PROMPT_PREFIX="${bold_blue}|${yellow}"
SCM_THEME_PROMPT_SUFFIX=" "
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓${bold_blue}|"
SCM_THEME_PROMPT_DIRTY=" ${bold_red}✗${bold_blue}|"

SCM_NONE_CHAR=""

function prompt_command() {
    local last_stats="$?"
    if [ $last_stats -eq 0 ]; then
        local status_color="${bold_green}"
    else
        local status_color="${bold_red}"
    fi
    user_host=
    if [[ $BASH_IT_PROMPT_SHOW_USER == "1" ]]; then
        [[ $BASH_IT_PROMPT_HIDE_HOST == "1" ]] && user_host+="${blue}u:"
        user_host+="${bold_blue}\u"
    fi
    if [[ $BASH_IT_PROMPT_HIDE_HOST != "1" ]]; then
        [[ $BASH_IT_PROMPT_SHOW_USER == "1" ]] && user_host+="${blue}@"
        if [[ $BASH_IT_PROMPT_HOST ]]; then
            user_host+="${bold_blue}${BASH_IT_PROMPT_HOST}"
        else
            user_host+="${bold_blue}\h"
        fi
    fi
    [[ $user_host != "" ]] && user_host="${user_host}  "
    PS1="${reset_color}${normal}${status_color}➜  ${user_host}${bold_cyan}\w${bold_blue} $(scm_char)$(scm_prompt_info)${reset_color}${normal} "
    unset user_host
}

PROMPT_COMMAND=prompt_command;
