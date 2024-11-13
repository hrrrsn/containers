FROM registry.access.redhat.com/ubi9-minimal:9.5-1731518200@sha256:9ffc5b7c447ba1918778c60e028216c8a98e3593aec0d3eca330817bc2e31e2b

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Red Hat Universal Base Image with Avahi"

RUN microdnf upgrade -y; \
    microdnf install -y avahi; \
    microdnf clean all -y

COPY avahi-daemon.conf /etc/avahi/avahi-daemon.conf
EXPOSE 5353/udp

ENTRYPOINT ["/usr/sbin/avahi-daemon", "--no-drop-root"]