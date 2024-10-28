FROM registry.access.redhat.com/ubi9/ubi:9.4-1214.1729773476@sha256:ee0b908e958a1822afc57e5d386d1ea128eebe492cb2e01b6903ee19c133ea75

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Red Hat Universal Base Image with Caddy and PHP"

COPY entrypoint.sh /entrypoint.sh
COPY Caddyfile /etc/caddy/Caddyfile

RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm; \
    yum upgrade -y; \
    yum module install php:8.2/common -y; \
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
