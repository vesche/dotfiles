xrdb -merge ~/.Xresources
xrandr --output HDMI2 --mode 1920x1080 --right-of HDMI1
polybar_launch.sh &
exec bspwm
