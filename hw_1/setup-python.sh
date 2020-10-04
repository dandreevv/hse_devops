#!/usr/bin/env bash

cp /vagrant/python/server.py /home/vagrant

apt-get install -y python3-pip
pip3 install -U pip aiohttp gunicorn

gunicorn server:create_app --bind localhost:8080 --worker-class aiohttp.GunicornWebWorker --daemon
