# Pull the latest official Nginx image from Docker Hub
docker image pull nginx:latest

# Create a new container named 'contohnginx' that maps port 8080 on the host to port 80 in the container
docker container create --name contohnginx --publish 8080:80 nginx:latest
