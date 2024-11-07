#!/bin/sh

### This scripts copies the existing kernel configuration and
### starts the kernel compilation and install
### along with re-emerging external modules

# Changes according to system
DOTFILES_DIRECTORY="/home/hetav/dotfiles"

# Changes according to eselect-kernel script // symlink use flag
KERNEL_DIRECTORY="/usr/src/linux"

# Copying Current Kernel Config
cp ${DOTFILES_DIRECTORY}/kernel-config/current-config /usr/src/linux/.config

# Defining no of jobs in make
JOBS=`expr $(nproc) / 2`

# Cleaning Previous Build
make -C ${KERNEL_DIRECTORY} clean

# Building kernels and external modules
make -C ${KERNEL_DIRECTORY} modules_prepare
make -C ${KERNEL_DIRECTORY} -j ${JOBS}
EMERGE_DEFAULT_OPTS="--quiet" emerge @module-rebuild # Emerging external modules

# Installation part
make -C ${KERNEL_DIRECTORY} modules_install
make -C ${KERNEL_DIRECTORY} install

