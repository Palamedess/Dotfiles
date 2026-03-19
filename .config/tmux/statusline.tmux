#!/bin/env bash
# Inspired by:
# https://github.com/wfxr/tmux-power/blob/master/tmux-power.tmux

source "$HOME/.config/tmux/statusenv.sh"

tmux_set() {
  tmux set-option -gq "$1" "$2"
}

# General
tmux_set status-bg "$bg0"
tmux_set status-fg "$text2"
tmux_set status-position top
tmux_set status-justify left
tmux_set status-interval 1

# Mode indicator setup
tmux_set @mode_indicator_prefix_prompt " TMUX   "
tmux_set @mode_indicator_copy_prompt " VISUAL "
tmux_set @mode_indicator_empty_prompt " NORMAL "

tmux_set @mode_indicator_prefix_mode_style "bg=blue,fg=$text1, bold"
tmux_set @mode_indicator_copy_mode_style "bg=$text3,fg=black, bold"
tmux_set @mode_indicator_empty_mode_style "bg=$text3,fg=black, bold"

# Statusbar options
tmux_set status-left-style "fg=$text2, bg=$bg1"
tmux_set status-right-style "fg=$text2, bg=$bg1"
tmux_set window-status-style "fg=$active_tab_fg,bg=$active_tab_bg"
tmux_set window-status-activity-style "fg=$active_tab_fg,bg=$active_tab_bg,bold"
tmux_set window-status-last-style "fg=$active_tab_fg,bg=$active_tab_bg"
tmux_set status-right-length 100
tmux_set window-status-separator ""
tmux_set status-left-length 150

file_path="#[fg=$bg0, bg=$file_path_bg]$mrsep#[fg=$file_path_fg] #(echo #{pane_current_path} | sed 's#$HOME#~#g') "
# Statusbar
host_name="#{tmux_mode_style}#[fg=$file_path_bg]$mrsep#[fg=$bg1]  $(whoami) "
time="$mlsep#[bg=$time_bg, fg=$time_fg] 󱑁 %I:%M %p"

tabstatus=" #I:#W#{?window_zoomed_flag, 󰍉, -}"
tabstatusactive="$tabstatus 󰆽"

tmux_set window-status-format "#[fg=$inactive_tab_bg,bg=$bg0]$lsep#[fg=$inactive_tab_fg,bg=$inactive_tab_bg] $tabstatus #[fg=$bg0,bg=$inactive_tab_bg]$lsep"
tmux_set window-status-current-format "\
#[fg=$active_tab_bg,bg=$bg0,bold]\
$lsep#[fg=$active_tab_fg,bg=$active_tab_bg]\
$tabstatusactive#[fg=$bg0] \
$lsep"

gap=" #[fg=$bg0,bg=$time_bg]$lsep"

if [[ "1" -eq "$gaps" ]]; then
  left_prompt="#{tmux_mode_indicator}#{tmux_mode_style}#[fg=$bg1]$mlsep#[fg=$time_bg,bg=$bg0]$time$gap"
  right_prompt="#[bg=$file_path_bg]$file_path#[fg=$file_path_bg, bg=$bg0]$mrsep$host_name"
else
  left_prompt="#{tmux_mode_indicator}#{tmux_mode_style}#[fg=$time_bg]$time$gap"
  right_prompt="$file_path$host_name"
fi

tmux_set status-left "$left_prompt"
tmux_set status-right "$right_prompt"
