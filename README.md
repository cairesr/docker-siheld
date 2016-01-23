# Docker Image with a Sinatra Example

A hello world with Sinatra ready to Docker. It can be run locally or as a docker container:

> To learn about docker, see: https://docs.docker.com/

## Simply run it (no docker)
```shell
bundle install
ruby hello_world.rb
```

## Run as a Docker Container

> if you're not familiar with docker, please take your time with the very basics: https://docs.docker.com/engine/misc/ 

This package is docker enabled, you can run it from a container through the following two options:

### Option 1: build the image locally
```shell
docker build --rm -t sinatra-hello-world .
docker run --rm -p8080:8080 sinatra-hello-world
```

### Option 2: pull the image from the Docker Hub. 

> Obs. with this option, you don't need to pull the source code from this github repo, just run the following commands:

```bash
docker pull cairesr/sinatra-hello-world
docker run --rm -p8080:8080 sinatra-hello-world
```