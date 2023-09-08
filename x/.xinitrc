#!/bin/sh

xrdb ~/.Xresources

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Polkit-gnome
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Wallpaper
feh --bg-fill ~/Pictures/wallpapers/theme-agnostic-dark.jpeg &

# Compositor
picom &

# Disable touchpad while typing
syndaemon -i 0.5 -t -K -R -d 

# Typmatic rate and delay
xset r rate 200 30

exec i3 
