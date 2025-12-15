#!/bin/bash

SESSION_NAME="dev"
DIR="$HOME/lidarStems/"

tmux new-session -d -s $SESSION_NAME -c $DIR -n "nvim"
tmux send-keys -t $SESSION_NAME:0 "nvim" C-m
tmux new-window -t $SESSION_NAME -n "shell" -c $DIR
tmux select-window -t $SESSION_NAME:0

tmux attach -t $SESSION_NAME
