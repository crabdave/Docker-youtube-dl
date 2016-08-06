


#!/bin/sh
echo "please input the youtube play list url for download!"
read input_variable
#echo "You entered: $input_variable"

docker run -it -e "container=youtube-dl" --name youtube-dl -h youtube-dl -v /data/docker/youtube:/data/docker/youtube youtube-dl "$input_variable"

