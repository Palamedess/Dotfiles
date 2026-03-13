#!/bin/bash

if [[ "$1" == "setup" ]]; then
  echo '{"alt": "on"}'
  exit
fi

sunset_pid=$(pidof hyprsunset)

if [[ -z "$sunset_pid" ]]; then
  setsid uwsm-app -- hyprsunset &
  setsid uwsm-app -- nerdshade -longitude -123.113952 -latitude 49.260872 -loop &
  echo '{"alt": "on"}'
elif [[ -n "$sunset_pid" ]]; then
  killall hyprsunset
  killall nerdshade
  echo '{"alt": "off"}'
fi
