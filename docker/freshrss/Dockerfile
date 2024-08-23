FROM freshrss/freshrss:1.24.2@sha256:126b5202e65bbfef1da19be87fb21d9909e104d3ad185775c999b76a420d30bc

RUN for dir in /etc/php /var/www/FreshRSS /etc/localtime /etc/timezone /etc/apache2/sites-available /var/run/apache2 /var/spool/cron /var/run; do \
        chgrp -R 0 $dir && chmod -R g=u $dir; \
    done