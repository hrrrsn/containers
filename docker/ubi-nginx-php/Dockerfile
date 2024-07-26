FROM registry.access.redhat.com/ubi9/ubi:9.4-1181@sha256:763f30167f92ec2af02bf7f09e75529de66e98f05373b88bef3c631cdcc39ad8

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Red Hat Universal Base Image with Nginx and PHP"

COPY nginx.conf /etc/nginx/nginx.conf
COPY entry.sh /entry.sh

RUN yum upgrade -y; \
    yum install -y rsync nginx procps gettext; \
    yum module install php:8.2/common -y; \
    yum install -y php-cli php-gd php-intl php-mysqlnd php-pdo php-pgsql php-xml php-opcache; \
    yum clean all -y; \
    mkdir -p /run/php-fpm/; \
    ln -sf /dev/stdout /var/log/nginx/access.log; \
    ln -sf /dev/stderr /var/log/nginx/error.log; \
    chgrp -R 0 /etc/nginx /run /entry.sh;\
    chmod -R g=u /etc/nginx /run /entry.sh; \
    chmod +x /entry.sh; \
    echo "<?php phpinfo(); ?>" > /usr/share/nginx/html/index.php

EXPOSE 8080

CMD ["/entry.sh"]
