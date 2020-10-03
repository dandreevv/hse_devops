## [Vagrant](https://www.vagrantup.com) with [Apache](https://httpd.apache.org) inside.

### Task

Configure an Apache server which wrapped into the Vagrant box.

Apache server instance must:
1) Allow access only via HTTPS;
2) Has two name-based virtual hosts: with static page and a small Python server;

Configured Apache hosts should be accessible from the local machine, outside the Vagrant box.

### Run

To up VM you just need to write:
```
vagrant up
```

To check it, use [Curl](https://curl.haxx.se/docs/manpage.html):
```
curl --insecure --location --request GET 'https://127.0.0.1/' \
--header 'Host: {static.com or dynamic.com}'
```

Or you can add domain names in /etc/hosts:
```
echo "127.0.0.1 static.com" >> /etc/hosts
echo "127.0.0.1 dynamic.com" >> /etc/hosts
```
And access via Browser by paths:
+ https://static.com,
+ https://dynamic.com
