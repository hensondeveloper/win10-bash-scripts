#!/bin/bash

# Make sure that curl is installed
which curl > /dev/null
if [ $? -eq 0 ]; then	
    # Install ffmpeg from the trusty-media PPA
    add-apt-repository -y ppa:mc3man/trusty-media
    apt-get update
    apt-get -y install ffmpeg

    # Install and link youtube-dl
    curl https://yt-dl.org/downloads/2016.04.19/youtube-dl -o /usr/local/bin/youtube-dl
    chmod a+rx /usr/local/bin/youtube-dl
else 
    echo "Please install curl before running this script."; 
fi
