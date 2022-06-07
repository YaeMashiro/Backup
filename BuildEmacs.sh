#!/usr/bin/env bash

rm -rf /Users/mashiro/Library/Caches/makepkg/emacs-mashiro/pkg
rm -rf /Users/mashiro/Library/Caches/makepkg/emacs-mashiro/src

cd /Users/mashiro/Library/Caches/makepkg/emacs-mashiro/
makepkg

rm /Users/mashiro/Library/Caches/mashiro/x86_64/*.zst

mv /Users/mashiro/Library/Caches/makepkg/emacs-mashiro/*.zst /Users/mashiro/Library/Caches/mashiro/x86_64/
repo-add /Users/mashiro/Library/Caches/mashiro/x86_64/mashiro.db.tar.gz /Users/mashiro/Library/Caches/mashiro/x86_64/*.zst

rsync -azP -e 'ssh -p 2222' --delete /Users/mashiro/Library/Caches/mashiro mashiro@15.155.2.200:/volume1/home/mashiro/www
