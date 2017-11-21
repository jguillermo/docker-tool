#! /bin/bash
docker run -it --rm -v "$PWD":/usr/src/app -w /usr/src/app node:8.9.1-alpine npm "$@"