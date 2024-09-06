FROM freshrss/freshrss:1.24.3@sha256:2edf78120d06de267864a9d4affbd8158f23e668cf569e273f7f6e755c73b0a5

RUN for dir in /etc/php /var/www/FreshRSS /etc/localtime /etc/timezone /etc/apache2/sites-available /var/run/apache2 /var/spool/cron /var/run; do \
        chgrp -R 0 $dir && chmod -R g=u $dir; \
    done