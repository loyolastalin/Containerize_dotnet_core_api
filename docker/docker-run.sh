#!/bin/bash -e

IMG_TAG=lsooai/mycoretest
CONTINER_NAME=stalin_core_instance
PKG_VERSION=1.0

docker build -f .\docker\Dockerfile --pull=true -t ${IMG_TAG}  .

docker run -p 4040:80 --rm --name $CONTINER_NAME $IMG_TAG -e PKG_VERSION=${PKG_VERSION}

