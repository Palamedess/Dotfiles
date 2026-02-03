#!/usr/bin/env bash

# Inspired by:
# https://github.com/wfxr/tmux-power/blob/master/tmux-power.tmux

fg="#161719"
bg="black"
text="brightblack"
text_bright="colour4"
path="$bg"
time="$fg"
active="brightyellow"
date="blue"
#sep_left=''
#sep_right=''
#sep_left=''
#sep_right=''
#sep_left=''
#sep_right=''
sep_left=''
sep_right=''

tmux_set() {
  tmux set-option -gq "$1" "$2"
}

# General
tmux_set status-bg "$bg"
tmux_set status-fg "$text"
tmux_set status-position top
tmux_set status-justify left

# Left

tmux_set @mode_indicator_prefix_prompt ' CMD '
tmux_set @mode_indicator_copy_prompt ' COPY '
tmux_set @mode_indicator_sync_prompt ' SYNC '
tmux_set @mode_indicator_empty_prompt ' NORM '

tmux_set @mode_indicator_prefix_mode_style 'bg=magenta,fg=black, bold'
tmux_set @mode_indicator_copy_mode_style 'bg=brightyellow,fg=black, bold'
tmux_set @mode_indicator_sync_mode_style 'bg=brightred,fg=black, bold'
tmux_set @mode_indicator_empty_mode_style 'bg=colour4,fg=black, bold'

# Left
tmux_set status-left-style "fg=$text, bg=$bg"
tmux_set status-left-length 150
tmux_set status-left "#{tmux_mode_indicator}#{tmux_mode_style}#[fg=$bg]$sep_left#[fg=$time, bg=$bg]$sep_left#[bg=$time, fg=$text_bright] %I:%m %p #[bg=$time,fg=$bg]$sep_left#[bg=$bg] "

# Right
tmux_set status-right-style "fg=$text, bg=$bg"
tmux_set status-right-length 100
tmux_set status-right "#[fg=$bg, bg=$path]$sep_right#[fg=$text]#(echo #{pane_current_path} | sed 's#$HOME#~#g') #[fg=$path, bg=$bg]$sep_right#{tmux_mode_style}#[fg=$bg]$sep_right  $(whoami) "

# Window status style
tmux_set window-status-style "fg=$text,bg=$bg"
tmux_set window-status-last-style "fg=$text,bg=$fg"
tmux_set window-status-activity-style "fg=$active,bg=$fg,bold"

# Window

win_status=" #I:#W#{?window_zoomed_flag, 󰍉} "

tmux_set window-status-format "#[fg=$bg,bg=$bg]$sep_left#[fg=$text,bg=$bg]$win_status#[fg=$bg,bg=$bg]$sep_left"
tmux_set window-status-current-format "#[fg=$fg,bg=$bg,bold]$sep_left#[fg=$active,bg=$fg]$win_status#[fg=$bg,bg=$fg]$sep_left"

# Window separator
tmux_set window-status-separator ""

# clock mode
tmux_set clock-mode-colour yellow

# copy mode
tmux_set mode-style 'fg=black bg=brightred bold'

# panes
tmux_set pane-border-style "fg=black"
tmux_set pane-active-border-style "fg=brightblack"
