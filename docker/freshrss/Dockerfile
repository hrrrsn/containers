FROM freshrss/freshrss:1.24.3@sha256:2e0cd358bc22169da63bd9a3690ad55327747d0c51bf48c9b2b7bf3e131629db

RUN for dir in /etc/php /var/www/FreshRSS /etc/localtime /etc/timezone /etc/apache2/sites-available /var/run/apache2 /var/spool/cron /var/run; do \
        chgrp -R 0 $dir && chmod -R g=u $dir; \
    done