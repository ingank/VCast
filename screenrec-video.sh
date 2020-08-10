#!/bin/bash

UUID=$(< uuid.txt)

ffmpeg -y -f x11grab -video_size 1920x1080 -framerate 60 -i :0.0 -vaapi_device ":0" -vf 'format=nv12,hwupload' -map 0:0 -threads 8 -aspect 16:9 -g 30 -f mp4 -bf 0 -qp 19 -quality 2 -vcodec h264_vaapi "$UUID.mp4"
