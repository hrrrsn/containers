FROM fedora:41@sha256:7dfa0287e66691369cf8ba4a7be39c21af8e4663c3c9a854c5ebb221bfbb7947

RUN yum -y upgrade && \
    yum -y install \
        vim nano less wget rsync nodejs npm git openssh-clients \
    && yum clean all