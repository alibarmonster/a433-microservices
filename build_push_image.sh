#!/bin/bash

DOCKER_HUB_USERNAME=alibarmonster
IMAGE_NAME=item-app
IMAGE_VERSION=v1

docker build -t $DOCKER_HUB_USERNAME/$IMAGE_NAME:$IMAGE_VERSION .

echo $PASSWORD_DOCKER_HUB | docker login -u alibarmonster

docker push $DOCKER_HUB_USERNAME/$IMAGE_NAME:$IMAGE_VERSION

docker logout