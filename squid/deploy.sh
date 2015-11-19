#!/usr/bin/env bash

set -e

squid -NYCd 1 &
sleep 10
shoal-agent
