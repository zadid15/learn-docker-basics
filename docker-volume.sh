# List all Docker volumes on your system
docker volume ls

# Create a new named Docker volume called 'mongovolume'
docker volume create mongovolume

# Remove the 'mongovolume' volume (⚠️ only works if no container is using it)
docker volume rm mongovolume
