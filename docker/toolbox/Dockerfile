FROM fedora:41@sha256:6fa9d7d37aa9c2fe396029fd9c4f878fdff9f6ecc044a44f5e2f6c3c63ab823d

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
        procps-ng lsof fio jq git zip unzip \
        perf psmisc hostname iproute sysstat iotop \
    && yum clean all