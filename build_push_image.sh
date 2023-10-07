#!/bin/bash

# Perintah untuk membuat Docker image
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image sesuai dengan format Github Packages 
docker tag item-app:v1 docker.pkg.github.com/riyantorivalry/a433-microservices/item-app:v1

# Read the token from the file for login auth
chmod 400 token.txt
TOKEN=$(cat token.txt)

# Login ke Github Packages
docker login -u riyantorivalry -p "$TOKEN" docker.pkg.github.com

# Push image to Github Packages
docker push docker.pkg.github.com/riyantorivalry/a433-microservices/item-app:v1