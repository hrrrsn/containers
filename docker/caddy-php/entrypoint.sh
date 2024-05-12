#!/bin/bash

if [ -n "$DISABLE_PHP" ]; then
    /usr/bin/caddy run --config /etc/caddy/Caddyfile
    exit 0
else
    /usr/sbin/php-fpm -D && \
    /usr/bin/caddy run --config /etc/caddy/Caddyfile
fi

