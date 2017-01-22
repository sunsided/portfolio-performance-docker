#!/usr/bin/env bash

CONTAINER=sunside/portfolio-performance

docker run \
	--rm -it \
	--name $CONTAINER \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $(pwd):/data \
	$CONTAINER
