FROM fedora:41@sha256:7dfa0287e66691369cf8ba4a7be39c21af8e4663c3c9a854c5ebb221bfbb7947

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