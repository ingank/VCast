# Screencast mit Audiokommentar im Terminal

* Jack und Calf Studio Gear für die dezente Vorbereitug des Tonsignals.
* jack_capture für die direkte Aufnahme in eine WAV-Datei.
* Vorteile:
  * Tonaussetzer (X-RUNS) minimiert.
  * später noch möglich, das Original-Tonmaterial zu verwenden.
  * Audio-Routing innerhalb von JACK.
* Nachteile:
  * keine direkte Vorschau der Videoausgabe möglich.
* Aufanahme von Audio und Video wird mit Hilfe von drei Bash-Scripten organisiert.
* Am Ende des Aufnahmevorgangs gibt es drei Dateien im aktuellen Ordner:
  * FOO_UUID.mp4
  * FOO_UUID.wav
  * FOO_UUID-muxed.mp4
* Durch den Einsatz der UUID, kann es nicht zu einem versehentlichen Überschreiben schon getätigter Aufnahmen kommen.
* TODO: UUID durch Aufnahmezeitstempel ersetzen :)

```
cat ~/vcast/record.sh
#!/bin/bash
uuid -v 4 >uuid.txt
UUID=$(< uuid.txt)
tmux kill-server
tmux new-session -s "RECORD" -d
tmux split-window -v -t "RECORD"
tmux send-keys -t "RECORD" "./record_a.sh" C-m
tmux attach -t "RECORD"
ffmpeg -i "$UUID.mp4" -i "$UUID.wav" -c:v copy -c:a aac -b:a 224k "$UUID-muxed.mp4"
tmux kill-server
```
```
$ cat ~/vcast/record_a.sh
#!/bin/bash
UUID=$(< uuid.txt)
tmux select-pane -U
tmux send-keys -t "RECORD" "./record_v.sh" C-m
tmux select-pane -D
jack_capture --bitdepth 16 \
  --port "Calf Studio Gear":"Limiter Out #1" \
  --port "Calf Studio Gear":"Limiter Out #2" \
  --filename "$UUID.wav"
tmux select-pane -U
tmux send-keys -t "RECORD" C-c
sleep 2
tmux kill-ses -t "RECORD"
```
```
$ cat ~/vcast/record_v.sh
#!/bin/bash
UUID=$(< uuid.txt)
ffmpeg -y -f x11grab -video_size 1920x1080 -framerate 60 -i :0.0 \
  -vaapi_device ":0" -vf 'format=nv12,hwupload' \
  -map 0:0 -threads 8 -aspect 16:9 \
  -f mp4 -bf 0 -qp 19 -quality 2 -vcodec h264_vaapi "$UUID.mp4"
```
