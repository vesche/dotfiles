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
alias httpserver='sudo python -m http.server'
alias search='sudo find / -name'
alias dictionary='sdcv'
alias i3lock='i3lock -t -i /home/vesche/pics/lock.png'
alias steam="LD_PRELOAD='/usr/lib/libstdc++.so.6 /usr/lib/libgcc_s.so.1 /usr/lib/libxcb.so.1 /usr/lib/libgpg-error.so' /usr/bin/steam"
alias hr='printf $(printf "\e[$(shuf -i 91-97 -n 1);1m%%%ds\e[0m\n" $(tput cols)) | tr " " ='
alias twitch='streamlink-gui'
alias python='python3'
alias mullvad='sudo MULLVAD_USE_GTK3=yes mullvad'
alias getproxies='curl -k https://proxy.l337.tech/txt'
alias pictures='geeqie'
alias infolder='ls | grep -i'

PS1='[\u@\h \W]\$ '

# go
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# rust
PATH=$PATH:$HOME/.cargo/bin
