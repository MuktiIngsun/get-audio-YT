#!/bin/bash

# locate YT downloader
# if you use python env, uncomment the code below
# source /YourPythonPath/bin/activate 
python3 /get-audio-YT-main/get-audio-yt.py
ffmpeg -i "$(ls | grep .webm)" "$(ls | sed -n 's/\.webm$//p')".mp3
rm *.webm
mv *.mp3 /YourDirectory 
