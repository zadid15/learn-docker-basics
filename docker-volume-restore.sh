# Create a new empty Docker volume named 'mongorestore' for the restore target
docker volume create mongorestore

# Run a temporary Ubuntu container to extract the backup archive into the new volume:
# - Mount the backup folder from host
# - Mount the new 'mongorestore' volume as /data
# - Extract the archive into /data and strip the top-level folder
docker container run --rm --name ubunturestore --mount "type=bind,source=/Users/zadid/Documents/Developments/TUTORIAL/DOCKER/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

# Create a MongoDB container using the restored volume,
# expose it on port 27020, and set root credentials
docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=zadid --env MONGO_INITDB_ROOT_PASSWORD=zadid mongo:latest