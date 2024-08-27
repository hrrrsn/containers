FROM fedora:42@sha256:1e59754f0ddb68dabdcd291003a71b64164a363da6479f4d1f12cd7e7c5c1f0f

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Fedora image with Caddy and PHP"

COPY entrypoint.sh /entrypoint.sh
COPY Caddyfile /etc/caddy/Caddyfile

RUN yum upgrade -y; \
    yum install -y rsync caddy procps-ng gettext; \
    yum install -y php-cli php-gd php-intl php-mysqlnd php-pdo php-pgsql php-xml php-opcache; \
    yum clean all -y; \
    mkdir -p /run/php-fpm/; \
    chgrp -R 0 /etc/caddy /run;\
    chmod -R g=u /etc/caddy /run; \
    echo "<?php phpinfo(); ?>" > /usr/share/caddy/phpinfo.php

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
