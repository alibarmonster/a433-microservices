#!/bin/bash

DOCKER_HUB_USERNAME=alibarmonster
IMAGE_NAME=karsajob-ui
IMAGE_VERSION=latest

docker build -t $DOCKER_HUB_USERNAME/$IMAGE_NAME:$IMAGE_VERSION .

echo $PASSWORD_DOCKER_HUB | docker login -u alibarmonster --password-stdin

docker push $DOCKER_HUB_USERNAME/$IMAGE_NAME:$IMAGE_VERSION

docker logout