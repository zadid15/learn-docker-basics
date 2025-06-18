# Create a custom Docker bridge network named 'mongonetwork'
docker network create --driver bridge mongonetwork

# Create a MongoDB container named 'mongodb' connected to 'mongonetwork' with root credentials
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=zadid --env MONGO_INITDB_ROOT_PASSWORD=zadid mongo:latest

# Pull the latest mongo-express image from Docker Hub
docker image pull mongo-express:latest

# Create a Mongo Express container named 'mongodbexpress', connected to 'mongonetwork',
# exposing port 8081, and configured to connect to the MongoDB container
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://zadid:zadid@mongodb:27017/" mongo-express:latest

# Start the MongoDB container
docker container start mongodb 

# Start the Mongo Express container
docker container start mongodbexpress

# Disconnect the MongoDB container from 'mongonetwork'
docker network disconnect mongonetwork mongodb

# Connect the MongoDB container back to 'mongonetwork'
docker network connect mongonetwork mongodb