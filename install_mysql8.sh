#!/bin/bash
# Docker image: mysql:8.0.26
# MySQL version 8.0.26
# ==========
# Created: 25/07/2021
# Updated: 

COPY_FROM_PATH="/root/mysql8"
COPY_TO_PATH="/opt/"

docker pull mysql:8.0.26

cp -arv $COPY_FROM_PATH $COPY_TO_PATH

clear
echo ""
echo "MySQL installed"

