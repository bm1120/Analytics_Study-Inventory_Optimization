#!/bin/bash

# 필요한 디렉토리 생성
echo "Checking and creating necessary directories..."
mkdir -p notebooks
mkdir -p data

# 첫 실행인 경우 빌드를 포함하여 실행
if [ ! "$(docker images -q analytics_jupyter 2> /dev/null)" ]; then
    echo "First time running - Building image..."
    docker-compose up --build
else
    echo "Starting existing container..."
    docker-compose up
fi 