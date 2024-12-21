#!/bin/bash
: "${PORT:=8080}"
: "${DOCUMENT_ROOT:=/usr/share/nginx/html}"

envsubst '${PORT},${DOCUMENT_ROOT}' < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf.1

mv /etc/nginx/nginx.conf.1 /etc/nginx/nginx.conf

/usr/sbin/php-fpm -D && nginx -g "daemon off;"