#! /bin/bash
#pide el root solo una vez 
sudo -v

while true; do sudo -v; sleep 60; done &

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm  rofi alacritty picom udiskie  feh python-psutil lxappearance lightdm-gtk-greeter-settings 
sudo pacman -S --noconfirm  breeze base-devel rust nitrogen vlc unzip  nemo firefox obsidian  git polybar 

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru -S papirus-icon-theme nerd-fonts arc-gtk-theme sublime-text-4 materia-gtk-theme neofetch arandr s  --noconfirm 

git clone https://github.com/adi1090x/rofi.git

curl -O https://blackarch.org/strap.sh
chmod +x strap.sh
sudo ./strap.sh