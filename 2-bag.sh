#!/bin/bash

SESSION_NAME="bag"
DIR="$HOME/bags/"

tmux new-session -d -s $SESSION_NAME -c $DIR -n "rviz"
tmux send-keys -t $SESSION_NAME:0 "rviz2" C-m
tmux new-window -t $SESSION_NAME -n "bags" -c $DIR

tmux attach -t $SESSION_NAME
