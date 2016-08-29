# youtube-dl


#mkdir 
mkdir -p /data/docker/youtube

#add dir to White List 
chcon -Rt svirt_sandbox_file_t /data/docker/youtube

#remove container-youtube-dl
docker rm container-youtube-dl

#init playlist
echo https://www.youtube.com/XXXXXXXXXXXXXXXXXXXX >playlist

#build dockerfile
docker build -t youtube-dl .

#init
docker run -d -e "container=container-youtube-dl" --name container-youtube-dl -h container-youtube-dl -v /data/docker/youtube:/data/docker/youtube youtube-dl

#check logs
docker logs --tail 100 -f container-youtube-dl

#end
Enjoy it!

