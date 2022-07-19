from pytube import YouTube

url = input("YT Link: ")
yt = YouTube(url)

print("*********************Video Title************************")
#get Video Title
print(yt.title)

yt.streams.filter(only_audio=True)

print("********************Download video*************************")
stream = yt.streams.get_by_itag(251)
stream.download()