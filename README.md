# Netease Cloud Music in Docker Container

Docker image of Netease Cloud Music (网易云音乐) for Linux.

Netease Cloud Music (网易云音乐) is one of the most popular music player in China.

## Background

### Why creating this image

- Since Netease Cloud Music for Linux is **NOT** an open source software,
users like me don't want to run it directly on host for safety reasons.

- It is not available for Linux distributions other than Ubuntu and deepin.

## Preconditions

- [Docker 1.12+](https://docs.docker.com/engine/installation/)
- [Docker compose 1.10+](https://docs.docker.com/compose/install/)

## Usage

- Pull the image from Docker Hub:

``` bash
docker-compose pull
```

- Run in the background:

``` bash
docker-compose up -d
```

- Stop:

``` bash
docker-compose down
```

## (FOR DEVELOPERS) Build
``` bash
docker-compose build
```

