#!/usr/bin/env bash

rm -rf /Users/mashiro/Library/Caches/makepkg/emacs-mashiro/pkg
rm -rf /Users/mashiro/Library/Caches/makepkg/emacs-mashiro/src

cd /Users/mashiro/Library/Caches/makepkg/emacs-mashiro/

makepkg

rm /Users/mashiro/Library/Caches/mashiro/x86_64/emacs*.pkg.tar.zst

mv /Users/mashiro/Library/Caches/makepkg/emacs-mashiro/*.zst /Users/mashiro/Library/Caches/mashiro/x86_64/
