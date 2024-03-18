FROM fedora:39@sha256:61864fd19bbd64d620f338eb11dae9e8759bf7fa97302ac6c43865c48dccd679

# Toolbox
RUN yum -y upgrade && \
    yum -y install \
        # Terminal
        tmux screen htop ncdu watch pv \
        # Shell
        bash-completion vim nano less \
        # Network
        wget mtr openssh-clients net-tools rsync \
        iputils iperf3 tcpdump traceroute ncat telnet bind-utils \
        # System
        procps-ng lsof fio jq git zip unzip \
    && yum clean all
