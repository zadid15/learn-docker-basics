# Create a container named 'smallnginx' using the Nginx image,
# limit its memory to 100MB and CPU usage to 50%, and expose port 8081
docker container create --name smallnginx --memory 100m --cpus 0.5 --publish 8081:80 nginx:latest