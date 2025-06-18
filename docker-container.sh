# List all containers (running and stopped)
docker container ls -a

# List only running containers
docker container ls

# Create a Redis container named 'contohredis' using the latest Redis image
docker container create --name contohredis redis:latest

# Create a second Redis container named 'contohredis2' using the same image
docker container create --name contohredis2 redis:latest

# Start the 'contohredis' container
docker container start contohredis

# Start the 'contohredis2' container
docker container start contohredis2

# Stop the 'contohredis' container
docker container stop contohredis

# Stop the 'contohredis2' container
docker container stop contohredis2

# Remove the 'contohredis' container
docker container rm contohredis

# Remove the 'contohredis2' container
docker container rm contohredis2
