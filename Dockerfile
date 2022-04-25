FROM ubuntu:bionic

ADD files/get_mc.sh /get_mc.sh

RUN apt update &&\
    apt install -y --no-install-recommends \
    ca-certificates \
    openssh-client \
    wget \
    u-boot-tools \
    squashfs-tools \
    cpio \
    pigz \
    xz-utils \
    tar \
    dosfstools \
    parted \
    udev \
    curl \
    && bash /get_mc.sh

RUN apt-get clean &&\
    rm -rf /var/lib/apt/lists/*

ADD files/git-cache-meta /usr/bin