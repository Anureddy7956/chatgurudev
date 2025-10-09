#!/bin/bash

docker rmi -f chat-gurudev

docker build -t chat-gurudev:latest .

