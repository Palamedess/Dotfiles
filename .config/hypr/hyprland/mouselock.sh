#!/bin/bash

tmpfile=$(compgen -G /tmp/mouselock.*)

if [[ -n $tmpfile ]]; then
  status=$(cat /tmp/mouselock.*)
elif [[ -z $tmpfile ]]; then
  tmpfile=$(mktemp -t mouselock.XXX)
  echo "unlocked" >$tmpfile
  status=$(cat /tmp/mouselock.*)
fi

#Check mouselock contents and enable and disable the touchpad/mouse accordingly
if [[ "$status" == "unlocked" ]]; then
  hyprctl keyword "device[asue1409:00-04f3:3157-touchpad]:enabled" false
  echo "locked" >$tmpfile
elif [[ "$status" == "locked" ]]; then
  hyprctl keyword "device[asue1409:00-04f3:3157-touchpad]:enabled" true
  echo "unlocked" >$tmpfile
fi
