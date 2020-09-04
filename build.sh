#/usr/bin/env bash

set -euo pipefail

VERSION=${VERSION:-0.48.1}
CONTAINER=sunside/portfolio-performance:${VERSION}

docker build --build-arg VERSION="${VERSION}" -t ${CONTAINER} .
