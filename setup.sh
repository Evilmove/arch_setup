echo "update system"
sudo pacman -Sy -y
clear
echo "upgrading"
sudo pacman -Syu -y
clear
echo "installing firmware"
sudo pacman -Sy sof-firmware -y
sudo pacman -Sy linux-firmware-qlogic -y
clear
echo "installing git"
sudo pacman -Sy git -y
clear
echo "enable bluetooth"
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
clear
echo "installing firefox and neofetch"
sudo pacman -S firefox -y
sudo pacman -S neofetch -y
clear
#to check nvidia status
echo "check nvidia status"
nvidia-smi -y
