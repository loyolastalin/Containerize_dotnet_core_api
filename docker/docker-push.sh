#!/bin/bash -e
IMG_TAG=lsooai/mycoretest
PKG_VERSION=v1
DOCKER_USERNAME=lsoosai
DOCKER_PASSWORD =Env.password

docker login --username=$DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push $IMG_TAG