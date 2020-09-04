#!/usr/bin/env bash

set -euo pipefail

VERSION=${VERSION:-0.47.0}
IMAGE=sunside/portfolio-performance:${VERSION}

docker run \
	--rm -it \
	--name portfolio-performance \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $(pwd):/data \
	$IMAGE
