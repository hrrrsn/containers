FROM registry.access.redhat.com/ubi9-minimal:9.5-1730489338@sha256:6907fbacb294ab6ba988f8bcc6bd5127f589966e5808fcb454de3e104983ae5b

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Red Hat Universal Base Image with Avahi"

RUN microdnf upgrade -y; \
    microdnf install -y avahi; \
    microdnf clean all -y

COPY avahi-daemon.conf /etc/avahi/avahi-daemon.conf
EXPOSE 5353/udp

ENTRYPOINT ["/usr/sbin/avahi-daemon", "--no-drop-root"]