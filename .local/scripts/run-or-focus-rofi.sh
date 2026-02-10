#!/bin/bash

# Inspired by (ripped from)
# Omarchy's launch or focus script

runcmd=$1
appname=$(echo "$runcmd" | awk '{print $1}')

# Omarchy version checked titles too, however
# that may cause other applications with the same
# substring in their title to be selected instead.
# eg, Kitty with "firefox" in the title because it
# is editing a config file
win_address=$(hyprctl clients -j | jq -r --arg p "$appname" '.[]|select(.class|test("\\b" + $p + "\\b";"i"))|.address' | head -n1)

if [[ -n "$win_address" ]]; then
  hyprctl dispatch focuswindow "address:$win_address"
else
  setsid uwsm-app -- $runcmd
fi
