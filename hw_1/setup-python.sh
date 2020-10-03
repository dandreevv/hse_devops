#!/usr/bin/env bash

mkdir /var/server
cp /vagrant/server.py /var/server

apt-get install -y python3-pip
pip3 install -U pip aiohttp

nohup python3 /var/server/server.py &
