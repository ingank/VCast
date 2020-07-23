# podcast
Notizen rund um einen geplanten Podcast

## Audio

### [jack_capture](https://github.com/kmatheussen/jack_capture)
```
sudo apt install libjack-jackd2-dev
git https://github.com/kmatheussen/jack_capture.git
cd jack_capture
make
sudo su
PREFIX=/usr/local make install
```
Die ersten beiden JACK-Eingangskanäle in eine WAV-Datei streamen:
```
jack_capture --port system:capture_1 --port system:capture_2
```

### [Calf Studio Gear](https://calf-studio-gear.org/)
```
sudo apt install calf-plugins
```
