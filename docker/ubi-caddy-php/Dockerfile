FROM registry.access.redhat.com/ubi9/ubi:9.4-1181@sha256:1ee4d8c50d14d9c9e9229d9a039d793fcbc9aa803806d194c957a397cf1d2b17

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Red Hat Universal Base Image with Caddy and PHP"

COPY entrypoint.sh /entrypoint.sh
COPY Caddyfile /etc/caddy/Caddyfile

RUN yum upgrade -y; \
    yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm; \
    yum install -y rsync caddy procps-ng gettext; \
    yum module install php:8.2/common -y; \
    yum install -y php-cli php-gd php-intl php-mysqlnd php-pdo php-pgsql php-xml php-opcache; \
    yum clean all -y; \
    mkdir -p /run/php-fpm/; \
    chgrp -R 0 /etc/caddy /run;\
    chmod -R g=u /etc/caddy /run; \
    echo "<?php phpinfo(); ?>" > /usr/share/caddy/phpinfo.php

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
