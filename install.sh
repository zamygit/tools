#! /bin/bash
#pide el root solo una vez 
sudo -v
while true; do sudo -v; sleep 60; done &

#actualiza los repositorios 

sudo pacman -Syu --noconfirm

#instala utilidades base para mi entorno :V
sudo pacman -S --noconfirm  mesa intel-media-driver vulkan-intel lib32-mesa lib32-vulkan-intel libva-utils pulseaudio
sudo pacman -S --noconfirm  rofi alacritty picom udiskie  feh python-psutil lxappearance lightdm-gtk-greeter-settings 

#instala herrmientas del dia dia  :V

sudo pacman -S --noconfirm  breeze base-devel rust  unzip  nemo firefox obsidian  git polybar cava pavucontrol  
sudo pacman -S --noconfirm  network-manager-applet libnm-gtk networkmanager-openvpn discord tty-clock
sudo pacman -S --noconfirm  mtpfs libmtp gvfs-mtp
sudo systemctl enable --now NetworkManager

#instala paru repistorios AUR


git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

#instala herramientas de paru 
paru -S papirus-icon-theme  arc-gtk-theme sublime-text-4 materia-gtk-theme neofetch arandr rar mpc-qt-bin  gemini-cli ttf-nerd-fonts-symbols  ttf-iosevka-nerd  --noconfirm 
paru -S riseup-vpn
cd ..


git clone https://github.com/adi1090x/rofi.git
cd rofi
./setup.sh


rm -rf ~/.config
mkdir ~/.config
cp -r ~/tools/local/. ~/.config/
chmod +x ~/.config/rofi/launchers/type-2/launcher.sh
chmod +x ~/.config/rofi/powermenu/type-2/powermenu.sh



sudo rm -f /usr/share/applications/{avahi-discover.desktop,breezestyleconfig.desktop,bssh.desktop,bvnc.desktop,compton.desktop,feh.desktop,gkbd-keyboard-display.desktop,google-maps-geo-handler.desktop,i3.desktop,kcm_breezedecoration.desktop,ktelnetservice6.desktop,mpc-qt.desktop,mpv.desktop,nemo-autorun-software.desktop,nemo-autostart.desktop,openstreetmap-geo-handler.desktop,org.gnupg.pinentry-qt5.desktop,org.gnupg.pinentry-qt.desktop,org.kde.kiod6.desktop,org.kde.knewstuff-dialog6.desktop,picom.desktop,qv4l2.desktop,qvidcap.desktop,rofi.desktop,rofi-theme-selector.desktop,uxterm.desktop,wheelmap-geo-handler.desktop,xterm.desktop}

curl -O https://blackarch.org/strap.sh
chmod +x strap.sh
sudo ./strap.sh

sudo pacman -Rns xterm



echo exito






#reboot
