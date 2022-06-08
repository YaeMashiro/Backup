#!/usr/bin/env bash

repo-add /Users/mashiro/Library/Caches/mashiro/aarch64/mashiro.db.tar.gz /Users/mashiro/Library/Caches/mashiro/aarch64/*.zst
repo-add /Users/mashiro/Library/Caches/mashiro/x86_64/mashiro.db.tar.gz /Users/mashiro/Library/Caches/mashiro/x86_64/*.zst

rsync -azP -e 'ssh -p 2222' --delete /Users/mashiro/Library/Caches/mashiro mashiro@15.155.2.200:/volume1/home/mashiro/www/
