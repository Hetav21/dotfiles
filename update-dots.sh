### This scripts pushes the dots using git

# Enter the path to dotfiles
PATH_TO_DOTFILES="/home/hetav/dotfiles/"

### changing user to root as the directory is owned by root
# Copying portage files from etc into local directory
## sudo -u root cp -r /etc/portage ./

# git add, commit and push from the specified path
sudo -u root git -C ${PATH_TO_DOTFILES} add . | bash
sudo -u root git -C ${PATH_TO_DOTFILES} commit -m "auto commit" | bash
sudo -u root git -C ${PATH_TO_DOTFILES} push | bash

