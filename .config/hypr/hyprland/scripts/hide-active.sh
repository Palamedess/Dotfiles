#!/bin/bash

active_win=$(hyprctl -j activewindow | jq -r '.address')
hyprctl setprop address:"$active_win" hidden 1
