#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ll='ls -la --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi='vim'
alias top='htop'
alias ccat='pygmentize -g -O style=colorful,linenos=1'
alias httpserver='sudo python2 -m SimpleHTTPServer 80'

PS1='[\u@\h \W]\$ '
