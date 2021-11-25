#!/bin/bash
# Docker image: postgres:14.1
# PostgreSQL version 14.1
# ==========
# Created: 25/07/2021
# Updated: 25/11/2021

COPY_FROM_PATH="/root/postgres14"
COPY_TO_PATH="/opt/"

docker pull postgres:14.1

cp -arv $COPY_FROM_PATH $COPY_TO_PATH

clear
echo ""
echo "PostgreSQL installed"

