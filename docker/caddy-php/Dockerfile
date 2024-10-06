FROM fedora:42@sha256:bf1b02ad65c666bb841fb1738e5dd4e0381b343198e64a26cce54e0a7179f800

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Fedora image with Caddy and PHP"

COPY entrypoint.sh /entrypoint.sh
COPY Caddyfile /etc/caddy/Caddyfile
COPY php.ini-development /etc/php.ini

RUN yum upgrade -y; \
    yum install -y rsync caddy procps-ng gettext php-fpm php-cli php-gd php-intl php-mysqlnd php-pdo php-pgsql php-xml php-opcache; \
    yum clean all -y; \
    mkdir -p /run/php-fpm/; \
    chgrp -R 0 /etc/caddy /run;\
    chmod -R g=u /etc/caddy /run; \
    ln -sf /dev/stderr /var/log/php-fpm/error.log; \
    ln -sf /dev/stderr /var/log/php-fpm/www-error.log; \
    echo "<?php phpinfo(); ?>" > /usr/share/caddy/phpinfo.php

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
