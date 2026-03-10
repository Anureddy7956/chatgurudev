#!/bin/bash

if [ "$1" = "--stop" ]; then
    echo "Stopping Containers"
    podman-compose down
    exit
fi

echo "Starting Containers"
podman-compose up -d

podman exec chat-gurudev-ollama bash /root/run.sh
