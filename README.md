#### Smee Client

Docker image for server monitoring smee.io and forwarding requests to another server.

##### Parameters:

```
# SMEE_SOURCE_URL - source url as set on http://smee.io
# SMEE_TARGET_HOST - host to forward request (default 127.0.0.1)
# SMEE_TARGET_PORT - host port (default 80)
# SMEE_TARGET_PATH - host path
```

##### Instructions

First go to smee.io and start a channel. It will give you a url
```
https://smee.io/<obuscated path>
```

Set the SMEE_SOURCE_URL to the url as provided by smee.io
```
ex: SMEE_SOURCE_URL=https://smee.io/DY123foo
```

Set the target where you want the request forwarded

```
ex
SMEE_TARGET_HOST=https://foo.example.com
SMEE_TARGET_PORT=8080
SMEE_TARGET_PATH=path/to/your/endpoint
```
and launch the container/server with these params into docker or kubernetes.

##### Build

docker build -t composer22/smee-client:latest .
docker push composer22/smee-client:latest
