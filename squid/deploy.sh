#!/usr/bin/env bash

set -e
set -x

SCRIPT_DIR=$( cd $(dirname $0) ; pwd -P )
cd "$SCRIPT_DIR"

squid -NYCd 1 &
sleep 10
shoal-agent
