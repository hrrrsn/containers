FROM fedora:42@sha256:70d5934128fe1b1abc97750dc358dad9cf499c11059f0ed720872fedcc4880d1

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