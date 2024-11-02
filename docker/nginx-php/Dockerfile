FROM fedora:42@sha256:70d5934128fe1b1abc97750dc358dad9cf499c11059f0ed720872fedcc4880d1

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Fedora image with Nginx and PHP"

COPY nginx.conf /etc/nginx/nginx.conf
COPY entry.sh /entry.sh
COPY php.ini-development /etc/php.ini

RUN yum upgrade -y; \
    yum install -y rsync nginx procps gettext php-fpm php-cli php-gd php-intl php-mysqlnd php-pdo php-pgsql php-xml php-opcache; \
    yum clean all -y; \
    mkdir -p /run/php-fpm/; \
    ln -sf /dev/stdout /var/log/nginx/access.log; \
    ln -sf /dev/stderr /var/log/nginx/error.log; \
    ln -sf /dev/stderr /var/log/php-fpm/error.log; \
    ln -sf /dev/stderr /var/log/php-fpm/www-error.log; \
    chgrp -R 0 /etc/nginx /run /entry.sh;\
    chmod -R g=u /etc/nginx /run /entry.sh; \
    chmod +x /entry.sh; \
    echo "<?php phpinfo(); ?>" > /usr/share/nginx/html/phpinfo.php

EXPOSE 8080

CMD ["/entry.sh"]
