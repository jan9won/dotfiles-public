#######
#     #
# env #
#     #
#######
export LANG=en_US.UTF-8
export GPG_TTY=$(tty)
export EDITOR=vim

##########
#        #
# colors #
#        #
##########
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
clr=$'\e[0m'

#########
#       #
# alias #
#       #
#########
alias code='open -a "Visual Studio Code"'
alias python=python3
alias ll='ls -la'

#######################
#                     #
# String Manipulation #
#                     #
#######################
dashed(){
	echo "$1" |
	tr '[:upper:]' '[:lower:]' |
	sed -r 's/[^a-zA-Z0-9]/-/g' |
	sed -e 's/--*/-/g' |
	sed -e 's/^-//g; s/-$//g'
}
camel(){
	echo "$1" | 
	sed 's/[-{,1}|_{,1}]/ /g' | 
	tr -s "" | 
	awk -F " " '{for(i=1;i<=NF;i++){$i=toupper(substr($i,1,1)) substr($i,2)}} 1' OFS=" " |
	sed -E 's/ //g'
}
lower(){
	echo "$1" |
	tr '[:upper:]' '[:lower:]'
}

###################
#                 #
# app environment #
#                 #
###################
# Homebrew
eval $(/opt/homebrew/bin/brew shellenv)
# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# Go
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
# YARN
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# SSH
if [ -z "$SSH_AUTH_SOCK" ]; then
	eval "$(ssh-agent -s)"
	eval "$(ssh-add ~/.ssh/my_key)"
fi

