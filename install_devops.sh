#!/bin/bash
# Install Packages:
# HA Proxy, Certbot(Lets Encrypt)
# Docker, Docker Compose
# ==========
# HA-Proxy version 2.2.15
# certbot 0.40.0
# Docker version 20.10.7, build f0df350
# docker-compose version 1.29.2, build 5becea4c
# ==========
# Created: 17/01/2021
# Updated: 25/07/2021

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

# ------------------------------
#   Install HA Proxy
# ------------------------------
add-apt-repository --yes ppa:vbernat/haproxy-2.2
apt update
apt install haproxy -y

# ------------------------------
#   Install certbot
# ------------------------------
apt install certbot -y

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
