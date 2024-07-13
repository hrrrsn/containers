FROM fedora:41@sha256:c05bf79137835bf5c521c58f8252d6031780ae865a0379ab57f412e0ac6b42aa

RUN yum -y upgrade && \
    yum -y install \
        vim nano less wget rsync nodejs npm git openssh-clients \
    && yum clean all