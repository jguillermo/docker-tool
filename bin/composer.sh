#! /bin/bash
docker run -it --rm -v "$PWD":/app -w /app --user $(id -u):$(id -g) jguillermo/docker-tool:php71 composer "$@"