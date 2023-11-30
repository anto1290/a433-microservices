#!/bin/bash

#membuat image karsajobs dan memiliki tag latest 
docker build -t ghcr.io/anto1290/shipping-service:latest .

# Login github
echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u anto1290 --password-stdin

# Mempush image ke GitHub Packages
docker push ghcr.io/anto1290/shipping-service:latest
