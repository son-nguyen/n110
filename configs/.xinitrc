#!/bin/sh
#
# ~/.xinitrc
#

# start urxvt daemon
/usr/bin/urxvtd -q -o -f &

# set the wallpaper
feh --bg-scale ~/_in/images/wallpapers/re_Generation_03.png &

# let me restart X server
setxkbmap -option terminate:ctrl_alt_bksp &

# Dzen2 + Conky-CLI
(sleep 2s && conky | dzen2 -x 540 -y 586 -e '' -fg '#99c12f' -bg '#262626' -w '490' -h '14' -ta r -fn '-*-fixed-medium-r-*-*-12-*-*-*-*-*-iso8859-*' -p ) &

# Executed by startx (run your window manager from here)
exec ck-launch-session ~/scripts/dwm-start
brightness 30
