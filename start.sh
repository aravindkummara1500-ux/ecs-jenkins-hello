#!/bin/bash
set -e

cp /app/index.html /var/www/html/index.html
cp /app/health.html /var/www/html/health.html

exec /usr/sbin/httpd -D FOREGROUND
