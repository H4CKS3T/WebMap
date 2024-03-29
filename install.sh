#!/bin/bash

sudo apt install docker.io -y

mkdir /tmp/webmap

sudo docker run -d --name webmap -h webmap -p 8000:8000 -v /tmp/webmap:/opt/xml reborntc/webmap

sudo echo -e "mkdir /tmp/webmap\nsudo docker container start webmap" > /tmp/webmap-start
sudo echo -e "sudo docker container stop webmap" > /tmp/webmap-stop

sudo mv /tmp/webmap-start /usr/local/bin/
sudo mv /tmp/webmap-stop /usr/local/bin/

sudo chmod 755 /usr/local/bin/webmap-start
sudo chmod 755 /usr/local/bin/webmap-stop
