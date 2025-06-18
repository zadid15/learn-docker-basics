# Inspect detailed metadata of the 'redis:latest' image (layers, config, etc.)
docker image inspect redis:latest

# Inspect detailed information about the 'contohredis' container (e.g., mounts, networks, env)
docker container inspect contohredis

# Inspect detailed information about the volume named 'contohredis'
# (⚠️ Make sure 'contohredis' is actually a volume; otherwise, this will return an error)
docker volume inspect contohredis

# Inspect the default 'bridge' Docker network (includes connected containers, settings, etc.)
docker network inspect bridge
