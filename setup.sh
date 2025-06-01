echo "update system"
sudo pacman -Sy -y
echo "====================================================================================="
echo "upgrading"
sudo pacman -Syu -y
echo "====================================================================================="
echo "installing linux headers "
sudo pacman -S base-devel linux-zen-headers dkms
echo "====================================================================================="
echo "installing firmware"
sudo pacman -Sy sof-firmware -y
sudo pacman -Sy linux-firmware-qlogic -y
echo "====================================================================================="
echo "installing git"
sudo pacman -Sy git -y
echo "====================================================================================="
echo "enable bluetooth"
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
echo "====================================================================================="
echo "installing firefox and neofetch"
sudo pacman -S firefox -y
sudo pacman -S neofetch -y
clear
#to check nvidia status
echo "check nvidia status"
nvidia-smi -y
