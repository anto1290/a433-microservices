# Melakukan build dari dockerfile 
docker build -t item-app:v1 .

# Cek list docker image tersedia
docker images

# Push Docker Images ke Docker Hub
cat ../dockerpass.txt | docker login --username anto9012 --password-stdin
docker tag item-app:v1 anto9012/item-app:v1
docker push anto9012/item-app:v1
