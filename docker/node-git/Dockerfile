FROM fedora:41@sha256:38493a7ae941d0032de1bb7f278d69def932b6a27ed5ba2f3fa4027fa5010bb7

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Fedora image with Node.js and Git"

RUN yum -y upgrade && \
    yum -y install \
        vim nano less wget rsync nodejs npm git openssh-clients \
    && yum clean all