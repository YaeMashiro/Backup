#!/usr/bin/env bash

cd /Users/mashiro/Library/Caches/mashiro/emacs-nox/
makepkg

ssh mashiro@15.155.2.5 'rm /Users/mashiro/Library/Caches/mashiro/aarch64/emacs*.tar.zst'
scp /Users/mashiro/Library/Caches/mashiro/emacs-nox/*.zst mashiro@15.155.2.5:/Users/mashiro/Library/Caches/mashiro/aarch64/

rm /Users/mashiro/Library/Caches/mashiro/emacs-nox/emacs*.tar.zst
rm -rf /Users/mashiro/Library/Caches/mashiro/emacs-nox/pkg
rm -rf /Users/mashiro/Library/Caches/mashiro/emacs-nox/src
