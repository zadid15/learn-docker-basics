# List all Docker networks on your system
docker network ls

# Create a custom Docker bridge network named 'contohnetwork'
docker network create --driver bridge contohnetwork

# Remove the 'contohnetwork' network (only if no containers are connected to it)
docker network rm contohnetwork
