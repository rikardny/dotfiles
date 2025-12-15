#!/bin/bash

SESSION_NAME="sys"

tmux new-session -d -s $SESSION_NAME

tmux send-keys -t $SESSION_NAME:0 "bt" C-m
tmux split-window -v -t $SESSION_NAME:0
tmux send-keys -t $SESSION_NAME:0.1 "btop" C-m

tmux attach-session -t $SESSION_NAME
