FROM tautulli/tautulli:v2.14.6@sha256:f54d2d3a78780c765cd7a10b882474909f50247b5d2d118badaa9c035421effd

RUN for dir in /config /app; do \
        chgrp -R 0 $dir && chmod -R g=u $dir; \
    done

COPY start.sh /app/start.sh