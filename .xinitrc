#!/bin/sh

# gnome keyring
# eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
# export SSH_AUTH_SOCK
#source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# X settings
xrdb -merge .Xresources

# set kbmap for session
setxkbmap -layout br -model abnt2 -option ctrl:nocaps

# configure nvidia
# see: https://wiki.debian.org/NvidiaGraphicsDrivers/Optimus
# /usr/local/bin/switch_nvidia.sh

# No mouse acceleration
xset m 1/1 0 &

# Faster keyboard auto-repeat rate
xset r rate 250 50 &

# Disable dpms
xset -dpms
# No blank screen
xset s 0 0
xset s off
# setterm -blank 0 -powersave off -powerdown 0

# screensaver
# xscreensaver -no-splash &
# control screensaver when fullscreen
# lightson+ -d 2 &

# hide mouse
#unclutter -root &

# monitors
sh ~/.config/screenlayout/home.sh

# night time color temperature
#fluxgui &

# power management
#powerkit &

# bluetooth
#blueman-applet &

# open window manager
#exec awesome
