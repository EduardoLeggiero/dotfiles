#!/usr/bin/env bash

# Bash-it

export BASH_IT="$HOME/.bash_it"
source $BASH_IT/bash_it.sh

bash-it enable completion bash-it
bash-it enable completion git
bash-it enable completion ssh

bash-it enable alias general
