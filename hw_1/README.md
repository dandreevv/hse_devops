## Vagrant with Apache inside

### Task

The purpose of this task is to configure an Apache server instance with two name-based virtual hosts. The configuration should allow access only via HTTPS. The first host should return any static page and the second one should run a small Python back-end, which returns a page with the current date and browser fingerprint.
The configured Apache server should be wrapped into the Vagrant box. Apache hosts should be accessible from the local machine (from outside the Vagrant box).

### Contents

In this folder you can find:
 + Vagrant config;
 + Setup config;
 + Python config.
 + Python aiohttp server.