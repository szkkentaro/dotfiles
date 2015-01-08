# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
if   [ -e /etc/debian_version ] ||
     [ -e /etc/debian_release ]; then
     alias ls='ls --color'
elif [ -e /etc/fedora-release ] ||
     [ -e /etc/redhat-release ]; then
     alias ls='ls -G'
fi
alias l.='ls -d .*'
alias ll='ls -lh'
alias vi='vim'
alias which='which -a'

# histroy
HISTSIZE=100000
HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S  '
HISTIGNORE=ls:ll:l.:history

# grep
export GREP_OPTIONS='--color=auto --exclude-dir=.git'
