FROM fedora:41@sha256:3cc404e4736e4c73b234798f6941b4de70ea98087989a3c718d5f6303682447a

RUN yum -y upgrade && \
    yum -y install \
        vim nano less wget rsync nodejs npm git openssh-clients \
    && yum clean all