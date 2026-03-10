#!/bin/bash

podman rmi -f chat-gurudev

podman build -t chat-gurudev:latest .
mkdir -p ./app_data ./logs

podman pull docker.io/ollama/ollama
