FROM fedora:41@sha256:0c0d2dfc0f570a33b7bfbc10f4899a81e99c4236ab2c4ec3df43ce358517a08f

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Fedora image with Node.js and Git"

RUN yum -y upgrade && \
    yum -y install \
        vim nano less wget rsync nodejs npm git openssh-clients \
    && yum clean all