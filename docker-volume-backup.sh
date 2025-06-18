# Stop the 'mongovolume' MongoDB container to safely back up its data
docker container stop mongovolume

# Create a temporary container named 'nginxbackup' with:
# - a bind mount for saving the backup file to the host
# - a volume mount to access MongoDB data
docker container create --name nginxbackup --mount "type=bind,source=/Users/zadid/Documents/Developments/TUTORIAL/DOCKER/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

# Start the 'nginxbackup' container
docker container start nginxbackup

# Open an interactive Bash shell in the container
docker container exec -i -t nginxbackup /bin/bash

# Inside the container: create a compressed backup of the /data volume to /backup
tar cvf /backup/backup.tar.gz /data

# After backup, stop the 'nginxbackup' container
docker container stop nginxbackup

# Remove the temporary 'nginxbackup' container
docker container rm nginxbackup

# Start the MongoDB container again after backup is complete
docker container start mongovolume

# Pull the latest Ubuntu image (optional, used in the next step)
docker image pull ubuntu:latest

# Stop the MongoDB container again before doing another backup (to ensure data consistency)
docker container stop mongovolume

# Run a temporary Ubuntu container to create another backup of the volume,
# and automatically remove the container after the process (`--rm`)
docker container run --rm --name ubuntubackup --mount "type=bind,source=/Users/zadid/Documents/Developments/TUTORIAL/DOCKER/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data