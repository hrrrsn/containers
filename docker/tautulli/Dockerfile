FROM tautulli/tautulli:v2.14.4@sha256:4316ed82bd1334852c56460d0dc2c3ff4fc84ac55e71944bcb0f27838ed7a53e

RUN for dir in /config /app; do \
        chgrp -R 0 $dir && chmod -R g=u $dir; \
    done

COPY start.sh /app/start.sh