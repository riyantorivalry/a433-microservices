#!/bin/bash

# Perintah untuk membuat Docker image
docker build -t karsajobs_ui .

# Melihat daftar image di lokal
docker images

# Mengubah nama image sesuai dengan format Github Packages 
docker tag karsajobs_ui:latest ghcr.io/riyantorivalry/karsajobs_ui:latest

# Login ke Github Packages
echo $PASSWORD_DOCKER_HUB | docker login -u riyantorivalry --password-stdin ghcr.io

# Push image to Github Packages
docker push ghcr.io/riyantorivalry/karsajobs_ui:latest