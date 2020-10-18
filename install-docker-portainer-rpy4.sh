#!/bin/bash
sudo apt-get install apt-transport-https ca-certificates software-properties-common -y
curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
sudo usermod -aG docker pi
sudo usermod -aG docker root
sudo curl https://download.docker.com/linux/raspbian/gpg
sudo add-apt-repository "deb https://download.docker.com/linux/raspbian/ stretch stable"
sudo apt-get update
sudo apt-get upgrade
sudo systemctl enable docker.service
sudo systemctl start docker.service
docker info
docker volume create portainer_data
#linux -v "/var/run/docker.sock:/var/run/docker.sock"
#windows -v \\.\pipe\docker_engine:\\.\pipe\docker_engine
docker run -d -p 9000:9000 -p 8000:8000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
#windows
#docker run -d -p 9000:9000 -p 8000:8000 --name portainer --restart always -v \\.\pipe\docker_engine:\\.\pipe\docker_engine -v portainer_data:/data portainer/portainer

