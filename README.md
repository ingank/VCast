# VCastProject

## Allgemeines
* [Plattform/HW](plattform.txt)
* [Bildschirmauflösungen](https://www.elektronik-kompendium.de/sites/com/1904101.htm)
* [Youtube-Alternativen](https://www.ionos.de/digitalguide/online-marketing/social-media/youtube-alternativen-die-besten-portale-im-ueberblick/)
* [Screencast-EBook](https://www.learn2use.de/ebook/)

## Audio / Video
* [jack_capture](https://github.com/kmatheussen/jack_capture)
* [jack_capture // Internes Dokument](jack_capture.md)
* [ffmpeg // meine Parametrierung](ffmpeg.txt)
* [ffmpeg // JACK aka -f jack](https://ffmpeg.org/ffmpeg-devices.html#jack)
* [ffmpeg // VAAPI](https://trac.ffmpeg.org/wiki/Hardware/VAAPI)
* [ffmpeg // IntelGPUs](https://trac.ffmpeg.org/wiki/Hardware/QuickSync)
* [ffmpeg // Scaling #1](https://trac.ffmpeg.org/wiki/Scaling)
* [ffmpeg // Scaling #2](https://ffmpeg.org/ffmpeg-filters.html#scale)
* [ScreenCast mit Audio-Kommentar im Terminal // Internes Dokument](scast_audio_term.md)
* [K-Meter | Martin Zuther // Absolut zeitgemäßes Audiomessgerät](http://www.mzuther.de/en/software/kmeter/)

## Tools
### [tmux](https://github.com/tmux/tmux)
* http://minnano-news.club/tools/tmux-cheatsheet.html
* http://www.strcat.de/eigenes/tmux.html

### [Calf Studio Gear](https://calf-studio-gear.org/)
```
sudo apt install calf-plugins
```
Die Ausgangskanäle des Plugins _Limiter_ des _Calf Studio Gear's_ in eine WAV-Datei streamen:
```
jack_capture --port "Calf Studio Gear":"Limiter Out #1" --port "Calf Studio Gear":"Limiter Out #2"
```
