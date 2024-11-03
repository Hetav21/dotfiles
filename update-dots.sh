#!/bin/bash

### This scripts pushes the dots using git

PATH_TO_DOTFILES="/home/hetav/dotfiles/"

git -C ${PATH_TO_DOTFILES} add .
git -C ${PATH_TO_DOTFILES} commit -m "auto commit"
git -C ${PATH_TO_DOTFILES} push
