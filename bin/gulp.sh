#! /bin/bash
docker run -it --rm -v "$PWD":/usr/src/app -w /usr/src/app jguillermo/docker-tool:node89 gulp "$@"