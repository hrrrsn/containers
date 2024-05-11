#!/bin/bash
/usr/sbin/php-fpm -D && /usr/bin/caddy run --config /etc/caddy/Caddyfile
