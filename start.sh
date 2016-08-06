


#!/bin/sh
echo "please input the youtube play list url for download!"
read input_variable
#echo "You entered: $input_variable"

docker run -d -e "container=container-youtube-dl" --name container-youtube-dl -h container-youtube-dl -v /data/docker/youtube:/data/docker/youtube youtube-dl "$input_variable"

docker logs -f container-youtube-dl
