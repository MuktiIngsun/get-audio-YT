#!/bin/bash

# locate YT downloader
source /home/mukti-ingsun/Documents/PyYt/bin/activate
python3 /home/mukti-ingsun/Documents/PyYt/get-audio-yt.py
ffmpeg -i "$(ls | grep .webm)" "$(ls | sed -n 's/\.webm$//p')".mp3
rm *.webm
mv *.mp3 /home/mukti-ingsun/Music 