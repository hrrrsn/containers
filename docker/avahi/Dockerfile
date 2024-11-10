FROM registry.access.redhat.com/ubi9-minimal:9.4-1227.1726694542@sha256:c0e70387664f30cd9cf2795b547e4a9a51002c44a4a86aa9335ab030134bf392

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Red Hat Universal Base Image with Avahi"

RUN microdnf upgrade -y; \
    microdnf install -y avahi; \
    microdnf clean all -y

COPY avahi-daemon.conf /etc/avahi/avahi-daemon.conf
EXPOSE 5353/udp

ENTRYPOINT ["/usr/sbin/avahi-daemon", "--no-drop-root"]
