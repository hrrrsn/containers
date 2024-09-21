FROM tautulli/tautulli:v2.14.5@sha256:6017b491d8e9100a97391b639fff5824ad36a315c69aae3c9ed78407994a626e

RUN for dir in /config /app; do \
        chgrp -R 0 $dir && chmod -R g=u $dir; \
    done

COPY start.sh /app/start.sh