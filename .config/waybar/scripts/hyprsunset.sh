#!/bin/env bash

print_status() {
  if [[ -n "$1" && -n "$2" ]]; then
    echo '{"alt": "on", "text": "off"}'
  else
    echo '{"alt": "off", "text": "on"}'
  fi
}

loop() {
  local first
  first=$(pidof hyprsunset)

  while (true); do
    local last="$first"
    first=$(pidof hyprsunset)
    if [[ "$last" -ne "$first" ]]; then
      print_status "$first" "$(pidof nerdshade)"
    fi
  done
  exit
}

toggle_sunset() {
  local sun_pid
  sun_pid=$(pidof hyprsunset)
  local shade_pid
  shade_pid=$(pidof nerdshade)
  if [[ -z "$sun_pid" ]]; then
    setsid uwsm-app -- hyprsunset &
    setsid uwsm-app -- nerdshade -longitude -123.113952 -latitude 49.260872 -loop &
  elif [[ -n "$sun_pid" ]]; then
    if [[ -z "$shade_pid" ]]; then
      setsid uwsm-app -- nerdshade -longitude -123.113952 -latitude 49.260872 -loop &
      return
    fi
    killall hyprsunset
    killall nerdshade
  fi
}

arg1="$1"

main() {
  if [[ "$arg1" == "loop" ]]; then
    print_status "$(pidof hyprsunset)"
    loop
  else
    toggle_sunset
  fi
}

main
