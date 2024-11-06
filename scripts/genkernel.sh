# Changes according to system
DOTFILES_DIRECTORY="/home/hetav/dotfiles/"

# Changes according to eselect kernel set <>
KERNEL_DIRECTORY="/usr/src/linux"

# Copying Current Kernel Config
sudo -u root cp ${DOTFILES_DIRECTORY}/kernel-config/current-config /usr/src/linux/.config

# Make Commands
sudo -u root make -C ${KERNEL_DIRECTORY} -j 8
sudo -u root make -C ${KERNEL_DIRECTORY} modules_install
sudo -u root make -C ${KERNEL_DIRECTORY} install

# Emerging Nvidia Drivers
sudo EMERGE_DEFAULT_OPTS="" emerge nvidia-drivers
