#!/usr/bin/env bash

VERSION=5.18.2-1

cd /Users/mashiro/Library/Caches/mashiro/aarch64/
curl -JLO https://mirrors.manjaro.org/repo/arm-unstable/core/aarch64/linux-rpi4-mainline-headers-$VERSION-aarch64.pkg.tar.zst
curl -JLO https://mirrors.manjaro.org/repo/arm-unstable/core/aarch64/linux-rpi4-mainline-$VERSION-aarch64.pkg.tar.zst
