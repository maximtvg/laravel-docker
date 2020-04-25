#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install -y git
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker vagrant
apt install docker-compose -y

sleep 5
echo -e "\e[34mDocker app status...\e[0m"
service docker status
