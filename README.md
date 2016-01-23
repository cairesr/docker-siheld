# Docker Image with a Sinatra Example

A hello world with Sinatra ready to Docker. It can be run locally or as a docker container.

> This is the source code to build the Docker Image and run as a container. However, if you want, the source code can be fetched from here and run locally with no docker involved:

```shell
cd docker-siheld
bundle install
ruby hello_world.rb
```

## Run as a Docker Container

> if you're not familiar with docker, please take your time with the very basics: https://docs.docker.com/engine/misc/ 

### Option 1: pull from github and build the image in your docker host
```shell
cd docker-siheld
docker build --rm -t sinatra-hello-world .
docker run --rm -p8080:8080 sinatra-hello-world
```

### Option 2: pull the image straight from the Docker Hub and run the image in your docker host

> Obs. with this option, you don't need to pull the source code from this github repo, just run the following commands:

```shell
docker pull cairesr/sinatra-hello-world
docker run --rm -p8080:8080 sinatra-hello-world
```