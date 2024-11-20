@echo off
echo Checking and creating necessary directories...
if not exist notebooks mkdir notebooks
if not exist data mkdir data

echo Checking if image exists...
docker images | findstr analytics_jupyter > nul
if %errorlevel% equ 0 (
    echo Starting existing container...
    docker-compose up
) else (
    echo First time running - Building image...
    docker-compose up --build
) 