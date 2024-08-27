FROM fedora:42@sha256:1e59754f0ddb68dabdcd291003a71b64164a363da6479f4d1f12cd7e7c5c1f0f

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