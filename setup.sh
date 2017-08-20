#!/bin/sh
set -e

sudo curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo curl -fsSL https://raw.githubusercontent.com/lexana/zac-aws-bootstrap/master/docker.config -o /etc/init/docker.conf
sudo service docker restart

sudo curl -L https://github.com/docker/compose/releases/download/1.14.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#docker login -u lexana -p [pass] https://registry.lexana.com.br:5043

#sudo mv sshd_config /etc/ssh/sshd_config
#sudo service ssh restart
