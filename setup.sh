#!/bin/sh
set -e

curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

sudo curl -fsSL https://raw.githubusercontent.com/lexana/zac-aws-bootstrap/master/docker.config -o /etc/init/docker.conf
sudo service docker restart
