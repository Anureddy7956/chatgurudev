#!/bin/bash

if [ $2="--stop" ]; then
    podman-compose down
    exit
fi

podman-compose up
