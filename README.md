# youtube-dl


#mkdir 
mkdir -p /data/docker/youtube

#add dir to White List 
chcon -Rt svirt_sandbox_file_t /data/docker/youtube

#build dockerfile
docker build -t youtube-dl .

#authorization
chmod 755 start.sh 

#start download
./start.sh
