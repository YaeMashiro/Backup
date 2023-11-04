#!/usr/bin/env bash

cd /srv/http || exit
rm -rf openwrt-imagebuilder-ramips-mt7620.Linux-x86_64
curl -JLO https://downloads.openwrt.org/snapshots/targets/ramips/mt7620/openwrt-imagebuilder-ramips-mt7620.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-ramips-mt7620.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-ramips-mt7620.Linux-x86_64 || exit
make info
