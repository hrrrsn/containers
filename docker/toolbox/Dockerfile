FROM fedora:41@sha256:38493a7ae941d0032de1bb7f278d69def932b6a27ed5ba2f3fa4027fa5010bb7

LABEL org.opencontainers.image.source=https://github.com/hrrrsn/containers
LABEL org.opencontainers.image.description="Fedora image with useful utilities"

# Toolbox container
RUN yum -y upgrade && \
    yum -y install \
        # Terminal
        tmux screen htop ncdu pv tree mc \
        # Shell
        bash-completion vim nano less \
        # Network
        wget mtr openssh-clients net-tools rsync nmap httpie nc \
        iputils iperf3 tcpdump traceroute ncat telnet bind-utils \
        # System
        procps-ng lsof fio jq git zip unzip stress \
        perf psmisc hostname iproute sysstat iotop \
    && yum clean all