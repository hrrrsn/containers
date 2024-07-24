FROM fedora:41@sha256:892b63610a0901710c3fcdd28d11e4a54c85308ef6ee137208be4278ab03b472

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