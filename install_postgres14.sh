#!/bin/bash
# Docker image: postgres:14.0
# PostgreSQL version 14.0
# ==========
# Created: 25/07/2021
# Updated: 12/10/2021

COPY_FROM_PATH="/root/postgres14"
COPY_TO_PATH="/opt/"

docker pull postgres:14.0

cp -arv $COPY_FROM_PATH $COPY_TO_PATH

clear
echo ""
echo "PostgreSQL installed"

