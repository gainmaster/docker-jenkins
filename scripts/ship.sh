#!/usr/bin/env bash

set -x              # Print command traces before executing command
trap 'exit 1' ERR   # Exit script with error if command fails

# Set working directory to project root
cd $(dirname "${BASH_SOURCE[0]}") && cd ../

declare IMAGE_NAME="bachelorthesis/jenkins"

function ship_master() {
	sudo docker push "${IMAGE_NAME}:latest"
	sudo docker push "${IMAGE_NAME}:master"
}

function ship_slave() {
    sudo docker push "${IMAGE_NAME}:slave"
}

function ship() {
	sudo docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASSWORD
	ship_master
	ship_slave
}

if [[ -z $(which docker) ]]; then
    echo "Missing docker client which is required for shipping."
    exit 2
fi

ship