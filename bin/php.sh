#! /bin/bash
docker run -it --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp --user $(id -u):$(id -g) jguillermo/docker-tool:php71 php "$@"