#!/usr/bin/env bash

set -e

/bin/bash -c "/bin/sed -i -e 's/@IP@/${SHOAL_EXTERNAL_IP}/g' /etc/shoal/shoal_agent.conf"

squid -NYCd 1 &
sleep 10
shoal-agent
