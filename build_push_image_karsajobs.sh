#!/bin/bash

# Perintah untuk membuat Docker image
docker build -t karsajobs .

# Melihat daftar image di lokal
docker images

# Mengubah nama image sesuai dengan format Github Packages 
docker tag karsajobs ghcr.io/riyantorivalry/karsajobs

# Login ke Github Packages
echo $PASSWORD_DOCKER_HUB | docker login -u riyantorivalry --password-stdin ghcr.io

# Push image to Github Packages
docker push ghcr.io/riyantorivalry/karsajobs