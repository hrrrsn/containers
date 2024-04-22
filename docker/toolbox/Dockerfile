FROM fedora:41@sha256:cd58e01738fe9d281934c71e47c8e4e605a008bb233436c356bbcbe478149a74

# Toolbox
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
        procps-ng lsof fio jq git zip unzip \
        perf psmisc hostname iproute sysstat iotop \
    && yum clean all