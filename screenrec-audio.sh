#!/bin/bash

UUID=$(< uuid.txt)
jack_capture --bitdepth 16 --port "Calf Studio Gear":"Limiter Out #1" --port "Calf Studio Gear":"Limiter Out #2" --filename "$UUID.wav"
tmux select-pane -U
tmux send-keys -t "RECORD" C-c
sleep 2
tmux kill-ses -t "RECORD"
