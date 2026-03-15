#!/bin/env bash

print_status() {
  if [[ -z "$1" ]]; then
    echo '{"alt": "on", "text": "off"}'
  elif [[ -n "$1" ]]; then
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
      print_status "$first"
    fi
  done
  exit
}

toggle_sunset() {
  local pid
  pid=$(pidof hyprsunset)

  if [[ -z "$pid" ]]; then
    setsid uwsm-app -- hyprsunset &
    setsid uwsm-app -- nerdshade -longitude -123.113952 -latitude 49.260872 -loop &
  elif [[ -n "$pid" ]]; then
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
