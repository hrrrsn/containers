FROM fedora:41@sha256:3cc404e4736e4c73b234798f6941b4de70ea98087989a3c718d5f6303682447a

# Toolbox container
RUN yum -y upgrade && \
    yum -y install \
        # Terminal
        tmux screen htop ncdu pv \
        # Shell
        bash-completion vim nano less \
        # Network
        wget mtr openssh-clients net-tools rsync \
        iputils iperf3 tcpdump traceroute ncat telnet bind-utils \
        # System
        procps-ng lsof fio jq git zip unzip stress \
        perf psmisc hostname iproute sysstat iotop \
    && yum clean all