# Remove all unused Docker images (dangling images only)
docker image prune

# Remove all stopped containers
docker container prune

# Remove all unused volumes (not used by any container)
docker volume prune

# Remove all unused networks (not connected to any containers)
docker network prune

# Remove all unused data: containers, networks, images (dangling only), and build cache
docker system prune
