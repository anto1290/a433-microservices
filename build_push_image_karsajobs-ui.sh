#!/bin/bash


# Membuat Image karsajobs-ui dan memiliki tag latest
docker build -t ghcr.io/anto1290/karsajobs-ui:latest .

# dan password yang diambil dari environment variable bernama PASSWORD_GITHUB_PACKAGES
echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u anto1290 --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/anto1290/karsajobs-ui:latest
