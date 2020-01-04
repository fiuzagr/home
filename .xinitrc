#!/bin/sh

# set kbmap for session
setxkbmap -layout br -model abnt2 -option ctrl:nocaps

# load x files
X_RESOURCES_FILE=$HOME/.Xresources
[[ -f "$X_RESOURCES_FILE" ]] && xrdb -merge "$X_RESOURCES_FILE"
#X_MODMAP_FILE=$HOME/.Xmodmap
#[[ -f "$X_MODMAP_FILE" ]] && xmodmap "$X_MODMAP_FILE"

# start some nice programs
if [ -d /usr/share/defaults/xinit/xinitrc.d ]
then
  for f in /usr/share/defaults/xinit/xinitrc.d/?*.sh
  do
    [ -x "$f" ] && . "$f"
  done

  unset f
fi

# open window manager
exec awesome
