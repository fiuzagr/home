#!/bin/sh

# X settings
xrdb -merge .Xresources

# set kbmap for session
setxkbmap -layout br -model abnt2 -option ctrl:nocaps

# No mouse acceleration
xset m 1/1 0 &

# Faster keyboard auto-repeat rate
xset r rate 250 50 &

# screensaver
xscreensaver -no-splash &
# control screensaver when fullscreen
lightson+ -d 2 &

# hide mouse
unclutter -root &

# open window manager
exec awesome
