FROM fedora:41@sha256:0e30fb87b35f72b778e11144f02fe3ea7f3d391055187a92e06352dfbb163143

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Fedora image with Node.js and Git"

RUN yum -y upgrade && \
    yum -y install \
        vim nano less wget rsync nodejs npm git openssh-clients \
    && yum clean all