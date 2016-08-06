

# Pull base image  
FROM centos:latest
  
MAINTAINER crabdave "calorie.david@gmail.com"  

# Usage: USER [UID]
USER root

# Usage: WORKDIR /path
WORKDIR /data/docker/youtube

# Install wget git youtube-dl
RUN yum install wget youtube-dl -y
RUN wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
RUN chmod a+rx /usr/local/bin/youtube-dl

# modify conf  
ENTRYPOINT ["youtube-dl", "-cit", "playlist_url"]

