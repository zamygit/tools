#! /bin/bash
# Definir colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'


echo -e "-----------------------------------------------"
echo -e "${GREEN} ___  ___  ___  _    _ __ _  ___ "
echo -e "${GREEN}|_ _|| . || . || |  | / /| ||_ _|"
echo -e "${GREEN} | | | | || | || |_ |  \\ | | | | "
echo -e "${GREEN} |_| \`___'\`___'|___||_\\_\\|_| |_|"
echo -e "${NC}"              "${YELLOW}by.zamdev${NC}"
echo -e "-----------------------------------------------"

#pide el root solo una vez 
sudo -v
while true; do sudo -v; sleep 60; done &


#actualiza los repositorios 
echo -e "${YELLOW}Actualizando Repositorios${NC}"
sudo pacman -Syu --noconfirm
#instala utilidades base para mi entorno :V
echo -e "${YELLOW}Instalando utilidades base....${NC}"
sudo pacman -S --noconfirm  rofi alacritty picom udiskie  feh python-psutil lxappearance lightdm-gtk-greeter-settings 
#instala herrmientas del dia dia  :V
echo -e "${YELLOW}Instalando Herramientas del dia....${NC}"
sudo pacman -S --noconfirm  breeze base-devel rust vlc unzip  nemo firefox obsidian  git polybar 


#instala paru repistorios AUR
echo -e "${YELLOW}Instalando paru Repositorios Aur....${NC}"

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
echo -e "${YELLOW}Instalando Herramientas Aur....${NC}"
#instala herramientas de paru 
paru -S papirus-icon-theme  arc-gtk-theme sublime-text-4 materia-gtk-theme neofetch arandr  gemini-cli ttf-nerd-fonts-symbols  ttf-iosevka-nerd  --noconfirm 
cd ..


echo -e "${YELLOW}Instalando rofi....${NC}"
git clone https://github.com/adi1090x/rofi.git
cd rofi
./setup.sh


echo -e "${YELLOW}Copiando archivos de configuracion locales ....${NC}"
rm -rf ~/.config
mkdir ~/.config
cp -r ~/tools/local/. ~/.config/




echo -e "${YELLOW}listo reiniciaaa ....${NC}"
#reboot
#nerd-fonts