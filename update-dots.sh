#!/bin/bash

## files_path=("/home/hetav/dotfiles/configs/zsh/*")

## for file in ${files_path[*]} ; do inotifywait -q -m -e CLOSE_WRITE --format="git commit -m 'Auto Commit' %w && git push" ${file} | bash ; done

git add .
git commit -m "auto commit"
git push
