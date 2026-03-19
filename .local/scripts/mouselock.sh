#!/bin/bash

tmpfilename="mouselock"
tmpfile=$(compgen -G /tmp/"$tmpfilename".*)
status=

setup() {
  tmpfile=$(mktemp -t "$tmpfilename".XXX)
  echo "unlocked" >"$tmpfile"
}

check_tmp() {
  if [[ -n $tmpfile ]]; then
    status=$(cat /tmp/mouselock.*)
  elif [[ -z $tmpfile ]]; then
    setup
    status=$(cat /tmp/mouselock.*)
  fi
}

set_status() {
  #Check mouselock contents and enable and disable the touchpad/mouse accordingly
  if [[ "$status" == "unlocked" ]]; then
    hyprctl keyword "device[bcm5974]:enabled" false
    echo "locked" >"$tmpfile"
  elif [[ "$status" == "locked" ]]; then
    hyprctl keyword "device[bcm5974]:enabled" true
    echo "unlocked" >"$tmpfile"
  fi
}

main() {
  check_tmp
  set_status
}
