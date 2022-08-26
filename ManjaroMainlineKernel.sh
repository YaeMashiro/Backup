#!/usr/bin/env bash

RPiVERSION=5.19.3-1
VERSION=5.19.4-1
RCVERSION=6.0.rc2-4

cd /Users/mashiro/Library/Caches/mashiro/aarch64/

if [ -f "/Users/mashiro/Library/Caches/mashiro/aarch64/linux-rpi4-mainline-$RPiVERSION-aarch64.pkg.tar.zst" ]
  then
      echo 'NyaNya'
  else
      rm /Users/mashiro/Library/Caches/mashiro/aarch64/linux-rpi4-mainline-*-aarch64.pkg.tar.zst
      curl -JLO https://mirrors.manjaro.org/repo/arm-unstable/core/aarch64/linux-rpi4-mainline-$RPiVERSION-aarch64.pkg.tar.zst
      #curl -JLO https://mirrors.manjaro.org/repo/arm-unstable/core/aarch64/linux-rpi4-mainline-headers-$VERSION-aarch64.pkg.tar.zst

fi

if [ -f "/Users/mashiro/Library/Caches/mashiro/aarch64/linux-$VERSION-aarch64.pkg.tar.zst" ]
  then
      echo 'NyaNya'
  else
      rm /Users/mashiro/Library/Caches/mashiro/aarch64/linux-*-aarch64.pkg.tar.zst
      curl -JLO https://mirrors.manjaro.org/repo/arm-unstable/core/aarch64/linux-$VERSION-aarch64.pkg.tar.zst
fi

if [ -f "/Users/mashiro/Library/Caches/mashiro/aarch64/linux-rc-$RCVERSION-aarch64.pkg.tar.zst" ]
  then
      echo 'NyaNya'
  else
      rm /Users/mashiro/Library/Caches/mashiro/aarch64/linux-rc-*-aarch64.pkg.tar.zst
      curl -JLO https://mirrors.manjaro.org/repo/arm-unstable/core/aarch64/linux-rc-$RCVERSION-aarch64.pkg.tar.zst
fi
