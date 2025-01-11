echo "update system"
sudo pacman -Sy
clear
echo "upgrading"
sudo pacman -Syu
clear
echo "installing firmware"
sudo pacman -Sy sof-firmware
sudo pacman -Sy linux-firmware-qlogic
clear
echo "installing git"
sudo pacman -Sy git
clear
echo "enable bluetooth"
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
clear
echo "installing firefox and neofetch"
sudo pacman -S firefox
sudo pacman -S neofetch
clear
#to check nvidia status
echo "check nvidia status"
nvidia-smi
