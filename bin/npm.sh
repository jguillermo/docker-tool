#! /bin/bash
docker run -it --rm -v "$PWD":/usr/src/app -w /usr/src/app --user $(id -u):$(id -g) jguillermo/docker-tool:node89 npm "$@"