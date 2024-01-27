# If you come from bash or a different OS you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/Users/ezablaza/Library/Python/3.9/bin:/Users/ezablaza/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="nanotech"


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Bash
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=2000000

# AWS 
# Set profile
set-aws-profile() {
   export AWS_DEFAULT_PROFILE="$1"
}

# ECR Auth

# SSH

# Postgres
export PGDATA='/usr/local/var/postgres'
export PGHOST=localhost
alias pg-start='pg_ctl -l $PGDATA/server.log start'
alias pg-stop='pg_ctl stop -m fast'
alias pg-status='pg_ctl status'
alias pg-restart='pg_ctl reload'

# Docker
# delete excess images 

# Git
alias git-clean='git clean -xfd -e tmp -e .env -e .vscode'

# delete branches with removed remote
clean-local-branches() {
   git fetch -p && for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}');
   do git branch -D $branch
   done;
}


# Python
alias python='python3'
PYTHONDONTWRITEBYTECODE=1



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
