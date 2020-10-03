#!/usr/bin/env bash

apt-get update
apt-get install -y apache2

cp -r /vagrant/apache/static/ /var/www
cp -fr /vagrant/apache/*.conf /etc/apache2/sites-available/
cp -r /vagrant/apache/certs /etc/apache2/certs

a2enmod ssl headers proxy proxy_http
a2ensite 000-default.conf default-ssl.conf

service apache2 reload

echo "127.0.0.1 static.com" >> /etc/hosts
echo "127.0.0.1 dynamic.com" >> /etc/hosts
