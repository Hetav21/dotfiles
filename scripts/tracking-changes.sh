#!/bin/bash

### This scripts tracks and pushes all changes to the files that are being traced

# Path of files to be traced
files_path=("file1" "file2" "file3")

# Auto Commit to git
for file in ${files_path[*]} ; do inotifywait -q -m -e CLOSE_WRITE --format="git commit -m 'Auto Commit' %w && git push" ${file} | bash ; done
