#!/bin/sh

# update system
sudo apt-get update -y
sudo apt-get dist-upgrade -y

# enable postgree service
sudo systemctl enable postgresql
sudo systemctl start postgresql

sudo DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::="--force-confnew" dist-upgrade -yq
sudo apt-get install -y virtualbox-guest-x11toor
