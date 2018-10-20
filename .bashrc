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

streaming() {
    INRES="1920x1080" # input resolution
    OUTRES="1920x1080" # output resolution
    FPS="15" # target FPS
    GOP="30" # i-frame interval, should be double of FPS, 
    GOPMIN="15" # min i-frame interval, should be equal to fps, 
    THREADS="2" # max 6
    CBR="1000k" # constant bitrate (should be between 1000k - 3000k)
    QUALITY="ultrafast"  # one of the many FFMPEG preset
    AUDIO_RATE="44100"
    STREAM_KEY="$1" # use the terminal command Streaming streamkeyhere to stream your video to twitch or justin
    SERVER="live-jfk" # twitch server, see http://bashtech.net/twitch/ingest.php for list
    
    ffmpeg -f x11grab -s "$INRES" -r "$FPS" -i :0.0 -f alsa -i pulse -f flv -ac 2 -ar $AUDIO_RATE \
      -vcodec libx264 -g $GOP -keyint_min $GOPMIN -b:v $CBR -minrate $CBR -maxrate $CBR -pix_fmt yuv420p\
      -s $OUTRES -preset $QUALITY -tune film -acodec libmp3lame -threads $THREADS -strict normal \
      -bufsize $CBR "rtmp://$SERVER.twitch.tv/app/$STREAM_KEY"
}

