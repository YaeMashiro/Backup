#!/usr/bin/env bash

cd /Users/mashiro/Library/Caches/mashiro/emacs/
makepkg

rm /Users/mashiro/Library/Caches/mashiro/x86_64/emacs*.pkg.tar.zst
mv /Users/mashiro/Library/Caches/mashiro/emacs/*.zst /Users/mashiro/Library/Caches/mashiro/x86_64/

rm -rf /Users/mashiro/Library/Caches/mashiro/emacs/pkg
rm -rf /Users/mashiro/Library/Caches/mashiro/emacs/src
