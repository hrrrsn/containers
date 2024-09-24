FROM freshrss/freshrss:1.24.3@sha256:baedf173d60b63c72f93fdb8480ee002d4622cd34103aac6510f45fdff41effe

RUN for dir in /etc/php /var/www/FreshRSS /etc/localtime /etc/timezone /etc/apache2/sites-available /var/run/apache2 /var/spool/cron /var/run; do \
        chgrp -R 0 $dir && chmod -R g=u $dir; \
    done