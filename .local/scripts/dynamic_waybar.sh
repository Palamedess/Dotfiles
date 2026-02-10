#!/bin/bash

hyprctl dispatch $1 $2

isFullscreen=$(hyprctl -j activewindow | jq -r '.fullscreen')
bar=$(pidof waybar)

if [ $isFullscreen -ne 1 ] && [ -z $bar ]; then
  waybar &
else
  killall waybar
fi
