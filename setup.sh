#!/bin/sh
set -e

sudo curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo curl -fsSL https://raw.githubusercontent.com/lexana/zac-aws-bootstrap/master/docker.config -o /etc/init/docker.conf
sudo service docker restart

#docker login -u lexana -p [pass] https://registry.lexana.com.br:5043

sudo mv sshd_config /etc/ssh/sshd_config
sudo service ssh restart
