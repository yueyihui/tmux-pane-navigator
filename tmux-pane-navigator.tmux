#!/usr/bin/env bash

is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"

tmux bind-key -Troot C-w if-shell "$is_vim" "send-keys C-w" "switch-client -Ttable1"
tmux bind-key -Ttable1 C-h select-pane -L
tmux bind-key -Ttable1 h select-pane -L
tmux bind-key -Ttable1 C-j select-pane -D
tmux bind-key -Ttable1 j select-pane -D
tmux bind-key -Ttable1 C-k select-pane -U
tmux bind-key -Ttable1 k select-pane -U
tmux bind-key -Ttable1 C-l select-pane -R
tmux bind-key -Ttable1 l select-pane -R
tmux bind-key -Ttable1 C-w send-keys C-w
