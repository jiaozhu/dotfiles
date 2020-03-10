#
# ~/.bashrc
#

HISTSIZE= HISTFILESIZE= # Infinite history.



# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

export EDITOR="vim"
export TERMINAL="st"
export FILE="ranger"

alias config='/usr/bin/git --git-dir=/home/kaixin/.cfg/ --work-tree=/home/kaixin'
alias setproxy='export all_proxy=socks5h://localhost:1080'
alias setnoproxy='export all_proxy='

# curl https://raw.githubusercontent.com/riobard/bash-powerline/master/bash-powerline.sh > ~/.bash-powerline.sh
source ~/.bash-powerline.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
