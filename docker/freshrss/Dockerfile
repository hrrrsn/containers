FROM freshrss/freshrss:1.24.1@sha256:0e8708498272dac567b9d1654822ccb22037cf4b1792ec75b9929e70e53ddd16

RUN for dir in /etc/php /var/www/FreshRSS /etc/localtime /etc/timezone /etc/apache2/sites-available /var/run/apache2 /var/spool/cron /var/run; do \
        chgrp -R 0 $dir && chmod -R g=u $dir; \
    done