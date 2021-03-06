#!/usr/bin/env bash

if [ -f "/Users/mashiro/Library/Caches/mashiro/aarch64/emacs-nox-mashiro-29.0.50-$(date "+%Y%m%d").1-aarch64.pkg.tar.zst" ]
  then
    echo "Nya"
  else
    cd /Users/mashiro/Library/Caches/mashiro/emacs-nox/
    makepkg

    rm /Users/mashiro/Library/Caches/mashiro/aarch64/emacs*.pkg.tar.zst
    mv /Users/mashiro/Library/Caches/mashiro/emacs-nox/*.zst /Users/mashiro/Library/Caches/mashiro/aarch64/

    ssh mashiro@15.155.2.5 'rm /Users/mashiro/Library/Caches/mashiro/aarch64/emacs*.pkg.tar.zst'
    scp /Users/mashiro/Library/Caches/mashiro/aarch64/*.zst mashiro@15.155.2.5:/Users/mashiro/Library/Caches/mashiro/aarch64/

    rm -rf /Users/mashiro/Library/Caches/mashiro/emacs-nox/pkg
    rm -rf /Users/mashiro/Library/Caches/mashiro/emacs-nox/src
fi
