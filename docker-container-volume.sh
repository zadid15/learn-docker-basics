# Create a named Docker volume called 'mongodata'
docker volume create --name mongodata

# Create a MongoDB container named 'mongovolume' using the 'mongodata' volume for persistent data,
# expose port 27019, and set root credentials
docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=zadid --env MONGO_INITDB_ROOT_PASSWORD=zadid mongo:latest

# Stop the 'mongovolume' container
docker container stop mongovolume

# Remove the 'mongovolume' container (volume will remain intact)
docker container remove mongovolume