#!/bin/bash
# Docker image: mysql:8.0.27
# MySQL version 8.0.27
# ==========
# Created: 25/07/2021
# Updated: 25/11/2021

COPY_FROM_PATH="/root/mysql8"
COPY_TO_PATH="/opt/"

docker pull mysql:8.0.27

cp -arv $COPY_FROM_PATH $COPY_TO_PATH

clear
echo ""
echo "MySQL installed"

