#!/bin/bash
# Docker image: postgres:13.3
# PostgreSQL version 13.3
# ==========
# Created: 25/07/2021
# Updated: 

COPY_FROM_PATH="/root/postgresql13"
COPY_TO_PATH="/opt/"

docker pull postgres:13.3

cp -arv $COPY_FROM_PATH $COPY_TO_PATH

clear
echo ""
echo "PostgreSQL installed"

