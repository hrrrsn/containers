FROM fedora:42@sha256:1e59754f0ddb68dabdcd291003a71b64164a363da6479f4d1f12cd7e7c5c1f0f

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Fedora image with Node.js and Git"

RUN yum -y upgrade && \
    yum -y install \
        vim nano less wget rsync nodejs npm git openssh-clients \
    && yum clean all