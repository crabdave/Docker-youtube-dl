
# Pull base image  
FROM centos:latest
  
MAINTAINER crabdave "calorie.david@gmail.com"  

# Usage: USER [UID]
USER root

# two ways to Install youtube-dl(1.yum install,but always fail;2.wget youtube-dl)
RUN yum install wget youtube-dl -y
RUN wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
RUN chmod a+rx /usr/local/bin/youtube-dl

# Usage: WORKDIR /path
WORKDIR /data/docker/youtube

# add download list
ADD  playlist /root/

# add daemon script
ADD  start.sh /root/

#authorization
RUN chmod 755 /root/start.sh 

# modify conf  
ENTRYPOINT ["/root/start.sh"]

