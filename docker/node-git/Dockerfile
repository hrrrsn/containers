FROM fedora:41@sha256:3cc404e4736e4c73b234798f6941b4de70ea98087989a3c718d5f6303682447a

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Fedora image with Node.js and Git"

RUN yum -y upgrade && \
    yum -y install \
        vim nano less wget rsync nodejs npm git openssh-clients \
    && yum clean all