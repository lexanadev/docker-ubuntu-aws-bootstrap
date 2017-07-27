#!/bin/sh
set -e

curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

curl -fsSL -o /etc/init/docker.conf
service docker restart
