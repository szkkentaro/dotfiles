# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
alias l.='ls -dG .*'
alias ll='ls -lGh'
alias ls='ls -G'
alias vi='vim'
alias which='which -a'

# histroy
HISTSIZE=100000
HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S  '
HISTIGNORE=ls:ll:l.:history

# grep
export GREP_OPTIONS='--color=auto --exclude-dir=.git'
