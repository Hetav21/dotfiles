#!/bin/bash

### This scripts pushes the dots using git

# Enter the path to dotfiles
PATH_TO_DOTFILES="/home/hetav/dotfiles/"

# git add, commit and push from the specified path
### changing user to root as the directory is owned by root
sudo -u root git -C ${PATH_TO_DOTFILES} add . | bash
sudo -u root git -C ${PATH_TO_DOTFILES} commit -m "auto commit" | bash
sudo -u root git -C ${PATH_TO_DOTFILES} push | bash

