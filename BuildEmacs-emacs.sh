#!/usr/bin/env bash

if [ -f "/Users/mashiro/Library/Caches/mashiro/x86_64/emacs-mashiro-$(date "+%Y%m%d")-1-x86_64.pkg.tar.zst" ]
  then
    echo "Nya"
  else
    rm /Users/mashiro/Library/Caches/mashiro/x86_64/emacs*.pkg.tar.zst

    cd /Users/mashiro/Library/Caches/mashiro/emacs/
    makepkg

    mv /Users/mashiro/Library/Caches/mashiro/emacs/*.zst /Users/mashiro/Library/Caches/mashiro/x86_64/
    rm -rf /Users/mashiro/Library/Caches/mashiro/emacs/pkg
    rm -rf /Users/mashiro/Library/Caches/mashiro/emacs/src

    /Users/mashiro/Library/Caches/mashiro/UpdateRepo.sh

   # cd /Users/mashiro/Library/Caches/mashiro/emacs-pgtk/
   # makepkg
   # mv /Users/mashiro/Library/Caches/mashiro/emacs-pgtk/*.zst /Users/mashiro/Library/Caches/mashiro/x86_64/
   # rm -rf /Users/mashiro/Library/Caches/mashiro/emacs-pgtk/pkg
   # rm -rf /Users/mashiro/Library/Caches/mashiro/emacs-pgtk/src
fi
