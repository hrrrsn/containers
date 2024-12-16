FROM registry.access.redhat.com/ubi9/ubi:9.5-1734081738@sha256:aa149a2e32725b0ea9c8ac97d25e65a894b1a4b2f220dd7670d890e60a733a14

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Red Hat Universal Base Image with Nginx and PHP"

COPY nginx.conf /etc/nginx/nginx.conf
COPY entry.sh /entry.sh

RUN yum upgrade -y; \
    yum module install php:8.2/common -y; \
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
