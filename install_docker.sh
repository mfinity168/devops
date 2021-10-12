#!/bin/bash
# Install Packages:
# Docker, Docker Compose
# ==========
# Docker version 20.10.9, build c2ea9bc
# docker-compose version 1.29.2, build 5becea4c
# ==========
# Created: 17/01/2021
# Updated: 12/10/2021

timezone="Asia/Bangkok"
docker_compose="1.29.2"

apt update
apt install -y apt-transport-https ca-certificates curl software-properties-common

# ------------------------------
#   Ubuntu Server Setup Timezone 
# ------------------------------
ln -fs /usr/share/zoneinfo/$timezone /etc/localtime
dpkg-reconfigure -f noninteractive tzdata

# ------------------------------
#   Install Docker
# ------------------------------
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io -y

# ------------------------------  
#   Install Docker Compose
# ------------------------------
curl -L "https://github.com/docker/compose/releases/download/$docker_compose/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

clear
echo ""
echo "Packages installed"
echo "Rebooting..."
# echo $(haproxy -v)
# echo $(certbot --version)
# echo $(docker --version)
# echo $(docker-compose --version)
# echo ""
sleep 5
reboot
