# It is more advisable to use --noconfirm instead of -y with pacman
echo "upgrading system"
sudo pacman -Syu --noconfirm # -Syu already does database update and package update, no need to use -Sy before
echo "====================================================================================="
# It is not necessary to use -Sy every time you install, it is risky and it has been done before in pacman -Syu
echo "installing linux headers "
sudo pacman -S base-devel linux-zen-headers dkms --noconfirm
echo "====================================================================================="
echo "installing firmware"
sudo pacman -S sof-firmware linux-firmware-qlogic --noconfirm
echo "====================================================================================="
echo "installing git"
sudo pacman -S git --noconfirm
echo "====================================================================================="
echo "enable bluetooth"
sudo systemctl enable --now bluetooth.service # --now evita tener que volver ejecutar systemctl para hacer start, --now hace el start
echo "====================================================================================="
echo "installing firefox and fastfetch"
sudo pacman -S firefox fastfetch --noconfirm
echo "====================================================================================="
echo "installing nvidia propriority drivers"
sudo pacman -S nvidia-dkms nvidia-utils nvidia-settings --noconfirm
echo "====================================================================================="
echo "options nvidia-drm modeset=1" | sudo tee /etc/modprobe.d/nvidia-drm-nomodeset.conf
sudo mkinitcpio -P
echo "====================================================================================="
echo "blacklist nouveau" | sudo tee /etc/modprobe.d/blacklist-nouveau.conf
clear
#to check nvidia status
echo "check nvidia status"
nvidia-smi
echo "done"
echo "================================================

reboot after installetion completion

=================================================="
