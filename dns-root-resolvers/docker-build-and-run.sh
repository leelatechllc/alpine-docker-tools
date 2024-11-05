#!/bin/bash
docker buildx build -t dns-root-resolvers:latest .
docker run -d --name dns-root-resolvers -p53:53/udp  dns-root-resolvers:latest
