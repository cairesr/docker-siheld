# Docker Image with a Sinatra Example

> A hello world with Sinatra ready to Docker. 
> It can be run locally or as a docker container:

## Run
```shell
bundle install
ruby hello_world.rb
```

## Docker Container

This package is docker enabled, you can run it from a container. There are two options:

### Option 1: build the image locally
```shell
docker build --rm -t sinatra-hello-world .
docker run --rm -p8080:8080 sinatra-hello-world
```

### Option 2: pull the image from the Docker Hub 
```bash
docker build --rm -t sinatra-hello-world .
docker run --rm -p8080:8080 sinatra-hello-world
```