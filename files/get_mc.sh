#!/bin/bash
UNAME_ARCH=$( uname -m )
case "$UNAME_ARCH" in
    x86_64) MC_ARCH=amd64 ;;
    aarch64) MC_ARCH=arm64 ;;
esac;
wget --no-check-certificate -O/usr/bin/mc https://dl.min.io/client/mc/release/linux-${MC_ARCH}/mc
chmod a+x /usr/bin/mc