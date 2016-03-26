nitrogen --restore
xrdb -merge ~/.Xresources
python2 /home/vesche/.bar.py | lemonbar -B \#000000 -F \#faebd7 -f -*-profont-*-*-*-*-14-*-*-*-*-*-*-* &
exec bspwm
