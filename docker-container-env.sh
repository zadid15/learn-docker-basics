# Pull the latest official MongoDB image from Docker Hub
docker image pull mongo:latest

# Create a MongoDB container named 'contohmongo' with port mapping and root credentials
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=zadid --env MONGO_INITDB_ROOT_PASSWORD=zadid mongo:latest