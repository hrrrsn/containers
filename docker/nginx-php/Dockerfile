FROM fedora:41@sha256:0c0d2dfc0f570a33b7bfbc10f4899a81e99c4236ab2c4ec3df43ce358517a08f

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Fedora image with Nginx and PHP"

COPY nginx.conf /etc/nginx/nginx.conf
COPY entry.sh /entry.sh

RUN yum upgrade -y; \
    yum install -y rsync nginx procps gettext; \
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
