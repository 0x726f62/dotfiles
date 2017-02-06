#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

#start urxvt daemon
urxvtd -q -f -o

#start dropbox daemon
/usr/bin/dropboxd

#explictly define terminal for i3
export TERMINAL='rxvt-unicode'

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#set wallpaper
feh --bg-scale "$HOME/Pictures/lake.jpe"

exec i3
