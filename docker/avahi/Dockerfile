FROM registry.access.redhat.com/ubi9-minimal:9.5-1731604394@sha256:46f77b7dfba47b041de4c9d8516c24081fc92cc7743fca4a353e7f1c2a4beb19

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Red Hat Universal Base Image with Avahi"

RUN microdnf upgrade -y; \
    microdnf install -y avahi; \
    microdnf clean all -y

COPY avahi-daemon.conf /etc/avahi/avahi-daemon.conf
EXPOSE 5353/udp

ENTRYPOINT ["/usr/sbin/avahi-daemon", "--no-drop-root"]