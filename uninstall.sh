#!/bin/bash

sudo rm -r /tmp/webmap

sudo docker container stop webmap
sudo docker container rm webmap
sudo docker image rm reborntc/webmap

sudo rm /usr/local/bin/webmap-start
sudo rm /usr/local/bin/webmap-stop