#!/bin/bash
docker ps -a | grep 'myimage' > output
if [ -s output ]
then
	docker stop myimage
	docker rm myimage
	docker build -t assignment1314 .
	docker run --name myimage -d -p 8013:80 assignment1314
    rm -r output
else
	docker build -t assignment1314 .
	docker run --name myimage -d -p 8013:80 assignment1314
fi
docker ps -a | grep 'myimage2' > output
if [ -s output ]
then
	docker stop myimage2
	docker rm myimage2
	docker build -t assignment1314 .
	docker run --name myimage2 -d -p 8014:80 assignment1314
    rm -r output
else
	docker build -t assignment1314 .
	docker run --name myimage2 -d -p 8014:80 assignment1314
fi
