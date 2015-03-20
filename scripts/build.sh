#!/usr/bin/env bash

set -x              # Print command traces before executing command
trap 'exit 1' ERR   # Exit script with error if command fails

# Set working directory to project root
cd $(dirname "${BASH_SOURCE[0]}") && cd ../

declare IMAGE_NAME="bachelorthesis/jenkins"

function build_master() {
    docker build -t "${IMAGE_NAME}:latest" ./master
    docker build -t "${IMAGE_NAME}:master" ./master
}

function build_slave() {
    docker build -t "${IMAGE_NAME}:slave" ./slave
}

if [[ -z $(which docker) ]]; then
    echo "Missing docker client which is required for building."
    exit 2
fi

build_master && build_slave