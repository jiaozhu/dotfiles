#
# ~/.bashrc
#

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export EDITOR="vim"
export TERMINAL="st"
export FILE="ranger"
alias config='/usr/bin/git --git-dir=/home/kaixin/.cfg/ --work-tree=/home/kaixin'
export PS1="[\[\033[01;34m\]\W\[\033[00m\]]$ "
