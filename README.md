#SoundBandit

##Prerequisites

You need to have cURL and ffmpeg (with speex support) installed.

I used homebrew to install ffmpeg with speex support like this:

```sh
$ brew install ffmpeg --with-speex
```

##Running

Make the shell script executable

```sh
$ chmod +x mp3lookup.sh
```

and then run with an mp3 file as the audio sample to lookup

```sh
$ ./mp3lookup.sh your-audio-file.mp3
```

This'll produce a file called output.txt with the xml response from the api :)