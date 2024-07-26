FROM tautulli/tautulli:v2.14.3@sha256:36d6a81d7d06c5aba752ce025d956a47f6008d6529f39b05ed2cf51cf22fe26b

RUN for dir in /config /app; do \
        chgrp -R 0 $dir && chmod -R g=u $dir; \
    done

COPY start.sh /app/start.sh