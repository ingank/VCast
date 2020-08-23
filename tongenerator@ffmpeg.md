# Tongenerator mit ffmpeg

```
ffmpeg -f lavfi -i "sine=frequency=1000:duration=5" out.wav
ffplay -f lavfi -i "anoisesrc=c=pink:r=48000:a=1" -nodisp
ffplay -f lavfi -i "sine=frequency=1000:r=48000" -af "volume=volume=+18dB" -autoexit -nodisp
```

* https://ffmpeg.org/ffmpeg-filters.html#anoisesrc
* https://ffmpeg.org/ffmpeg-filters.html#sine
* https://ffmpeg.org/ffmpeg-filters.html#aevalsrc
* https://ffmpeg.org/ffmpeg-filters.html#volume
