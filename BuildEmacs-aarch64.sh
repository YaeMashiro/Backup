#!/usr/bin/env bash

rm -rf /Users/mashiro/Library/Caches/makepkg/emacs-mashiro-nox/pkg
rm -rf /Users/mashiro/Library/Caches/makepkg/emacs-mashiro-nox/src

cd /Users/mashiro/Library/Caches/makepkg/emacs-mashiro-nox/
makepkg

# rm /Users/mashiro/Library/Caches/mashiro/aarch64/*.zst

mv /Users/mashiro/Library/Caches/makepkg/emacs-mashiro-nox/*.zst /Users/mashiro/Library/Caches/mashiro/aarch64/
repo-add /Users/mashiro/Library/Caches/mashiro/aarch64/mashiro.db.tar.gz /Users/mashiro/Library/Caches/mashiro/aarch64/*.zst

rsync -azP -e 'ssh -p 2222' --delete /Users/mashiro/Library/Caches/mashiro/aarch64 mashiro@15.155.2.200:/volume1/home/mashiro/www/mashiro/
