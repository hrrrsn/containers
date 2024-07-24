FROM fedora:41@sha256:892b63610a0901710c3fcdd28d11e4a54c85308ef6ee137208be4278ab03b472

RUN yum -y upgrade && \
    yum -y install \
        vim nano less wget rsync nodejs npm git openssh-clients \
    && yum clean all