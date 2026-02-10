#!/bin/bash

direction=$1
browser=$2

hyprctl dispatch movefocus $direction

focused_window=$(hyprctl -j activewindow | jq -r '.class')

if [[ "$focused_window" == "$browser" ]]; then
  hyprctl keyword "device[bcm5974]:enabled" true
else
  hyprctl keyword "device[bcm5974]:enabled" false
fi
