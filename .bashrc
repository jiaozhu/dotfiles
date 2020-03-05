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

PS1="\n\[\033[35m\]\$(/bin/date)\n\[\033[32m\]\w\n\[\033[1;31m\]\u@\h: \[\033[1;34m\]\$(/usr/bin/tty | /bin/sed -e 's:/dev/::'): \[\033[1;36m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files \[\033[1;33m\]\$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\033[0m\] -> \[\033[0m\]"
