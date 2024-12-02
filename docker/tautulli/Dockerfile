FROM tautulli/tautulli:v2.15.0@sha256:f13daee2a403a95a51902b2625de5f6b944f034e9cd790e9d2a0c5e84c9842cb

RUN for dir in /config /app; do \
        chgrp -R 0 $dir && chmod -R g=u $dir; \
    done

COPY start.sh /app/start.sh