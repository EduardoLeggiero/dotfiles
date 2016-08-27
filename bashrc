#!/usr/bin/env bash

[ -f ~/.bashrc_local_before ] && . ~/.bashrc_local_before

export BASH_IT="$HOME/.bash_it"
[ -z $BASH_IT_THEME ] && export BASH_IT_THEME="leggiero"
unset MAILCHECK
[ -z $IRC_CLIENT ] && export IRC_CLIENT='irssi'
[ -z $TODO ] && export TODO="t"
[ -z $SCM_CHECK ] && export SCM_CHECK=true
source $BASH_IT/bash_it.sh

[ -f ~/.bashrc_local ] && . ~/.bashrc_local
[ -f ~/.bashrc_local_after ] && . ~/.bashrc_local_after
