#!/bin/bash
#docker ps -a | grep 'assignment1314' > output
#chmod 777 output
#if [ -s output ]
#then
        docker stop myimage
        docker rm myimage
	docker rmi myimage
        docker build -t assignment1314 .
        docker run --name myimage -d -p 8081:80 assignment1314
#else
#        docker build -t assignment1314 .
#        docker run --name myimage -d -p 8081:80 assignment1314
#fi
#rm -r output
