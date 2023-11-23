#!/bin/bash
#docker ps -a | grep 'assignment1314' > output
#chmod 777 output
container=docker ps -aq | xargs
docker stop $container
docker rm $container
docker rmi -f $(docker images -aq)
docker build -t assignment1314 .
docker run -d -p 8081:80 assignment1314
#else
#        docker build -t assignment1314 .
#        docker run --name myimage -d -p 8081:80 assignment1314
#fi
#rm -r output
