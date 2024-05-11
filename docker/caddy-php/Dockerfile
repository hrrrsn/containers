FROM registry.access.redhat.com/ubi9/ubi:9.4-947.1714667021

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
    echo "<?php phpinfo(); ?>" > /usr/share/caddy/index.php

EXPOSE 8080

ENTRYPOINT ["/usr/bin/caddy", "run"]
