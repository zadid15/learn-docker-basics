# Create a new Redis container named 'contohredis' using the latest Redis image
docker container create --name contohredis redis:latest

# Start the previously created 'contohredis' container
docker container start contohredis

# Show the logs from the 'contohredis' container (stdout and stderr output)
docker container logs contohredis

# Follow the real-time logs from the 'contohredis' container (like tail -f)
docker container logs -f contohredis
