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

HISTSIZE=100000
