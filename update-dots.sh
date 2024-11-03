#!/bin/bash

### This scripts pushes the dots using git

git -C /home/hetav/dotfiles/ add .
git -C /home/hetav/dotfiles/ commit -m "auto commit"
git -C /home/hetav/dotfiles/ push
