#!/bin/bash
echo "start downloading"
while read line
do
	echo "the downloading dir is /data/docker/youtube , downloading URL is:$line"
	cd /data/docker/youtube
	echo "the number of downloading files is:" `ls -l |grep "^-"|wc -l` 
	echo "start downloading from youtube"
	youtube-dl -cit $line
	echo "wait 30 minutes for next downloading"
	sleep 1800s
done < /root/playlist
