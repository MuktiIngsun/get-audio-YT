from pytube import YouTube

url = input("YT Link: ")
yt = YouTube(url)

print("===Video Title===")
#get Video Title
print(yt.title)

# filter audio tag
yt.streams.filter(only_audio=True)

print("===Download Audio===")
stream = yt.streams.get_by_itag(251) # 251 is the audio tag I chose
stream.download()
