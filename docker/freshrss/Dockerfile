FROM freshrss/freshrss:1.24.2@sha256:7b1d8f14c3905469c4f20488e78082dc6ca8a50b61798cc38f669a63f897f6b5

RUN for dir in /etc/php /var/www/FreshRSS /etc/localtime /etc/timezone /etc/apache2/sites-available /var/run/apache2 /var/spool/cron /var/run; do \
        chgrp -R 0 $dir && chmod -R g=u $dir; \
    done