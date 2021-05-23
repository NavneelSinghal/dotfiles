#!/bin/sh

xrandr --auto
xrandr --dpi 141
xrandr --output Virtual-1 --mode 1440x900 -r 144

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_QPA_PLATFORMTHEME=qt5ct

# picom -b
exec i3

