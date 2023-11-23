#!/bin/bash
docker ps -a | grep 'assignment1314' > output
chmod 777 output
if [ -S output ]
then
        sudo docker stop myimage
        sudo docker rm myimage
	sudo docker rmi myimage
        docker build -t assignment1314 .
        docker run --name myimage -d -p 8081:80 assignment1314
else
        docker build -t assignment1314 .
        docker run --name myimage -d -p 8081:80 assignment1314
fi
sudo rm -r output
