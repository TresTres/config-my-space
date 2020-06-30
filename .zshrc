#
# Some shortcuts for different directory listings
 alias ls='ls -hF --color=tty'                 # classify files in colour
 alias dir='ls --color=auto --format=vertical'
 alias vdir='ls --color=auto --format=long'
 alias ll='ls -l'                              # long list
 alias la='ls -Al'                              # all but . and ..
 alias l='ls -CF'                              #

# Command alias
alias python=python3.6
alias python2=python2.7


#eslint
alias leslint='function __leslint() {
	$(npm bin)/eslint $@;
	};__leslint'


LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS


# export TERM="xterm-256color"


export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:~/.local/bin
export SOOTPATH=~/Research/soot/nightly/sootclasses-trunk-jar-with-dependencies.jar
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias config='/usr/bin/git --git-dir=/root/.cfg/ --work-tree=/root'
alias tmux="TERM=screen-256color tmux"
