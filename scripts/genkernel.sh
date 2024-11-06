#!/bin/sh

### This scripts copies the existing kernel configuration and
### starts the kernel compilation and install
### along with re-emerging nvidia-drivers

# Changes according to system
DOTFILES_DIRECTORY="/home/hetav/dotfiles/"

# Changes according to eselect kernel set <>
KERNEL_DIRECTORY="/usr/src/linux"

# Copying Current Kernel Config
cp ${DOTFILES_DIRECTORY}/kernel-config/current-config /usr/src/linux/.config

# Make Commands
make -C ${KERNEL_DIRECTORY} clean
make -C ${KERNEL_DIRECTORY} -j 8
make -C ${KERNEL_DIRECTORY} modules_install
make -C ${KERNEL_DIRECTORY} install

# Emerging Nvidia Drivers
EMERGE_DEFAULT_OPTS="" emerge nvidia-drivers
