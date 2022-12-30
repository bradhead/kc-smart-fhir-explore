#!/bin/sh

echo 'Pulling and running hapi server"
docker pull hapiproject/hapi:latest
docker run -p 9001:8080 hapiproject/hapi:latest
