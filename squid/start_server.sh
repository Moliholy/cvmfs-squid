#!/usr/bin/env bash

set -e

SCRIPT_DIR=$( cd $(dirname $0) ; pwd -P )

docker build -t squid $@ "$SCRIPT_DIR"
docker run -p 3128:3128 -v "$SCRIPT_DIR":/opt/cvmfs-squid squid ./deploy.sh
