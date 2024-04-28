#!/usr/bin/env bash

set -g @plugin 'catppuccin/tmux'

# [Config 2](https://github.com/catppuccin/tmux?tab=readme-ov-file#config-2)
set -g @catppuccin_window_left_separator "█"
set -g @catppuccin_window_right_separator "█ "
set -g @catppuccin_window_number_position "right"
set -g @catppuccin_window_middle_separator "  █"

set -g @catppuccin_window_default_fill "number"

set -g @catppuccin_window_current_fill "number"
set -g @catppuccin_window_current_text "#{pane_current_path}"

set -g @catppuccin_status_modules_right "application session date_time"
set -g @catppuccin_status_left_separator  ""
set -g @catppuccin_status_right_separator " "
set -g @catppuccin_status_fill "all"
set -g @catppuccin_status_connect_separator "yes"

display "Catppuccin config loaded!"
