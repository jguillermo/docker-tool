#! /bin/bash
docker run -it --rm --user $(id -u):$(id -g) jguillermo/docker-tool:php71 php "$@"