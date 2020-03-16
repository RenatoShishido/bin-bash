#!/bin/bash
#Instalando fonts
apt update &&
apt upgrade &&
sudo mkdir /usr/local/share/fonts/ms_fonts &&
sudo mv ~/Downloads/FiraCode/ttf/*.ttc ~/Downloads/FiraCode/ttf/*.ttf /usr/local/share/fonts/ms_fonts/ &&
sudo chown root:staff /usr/local/share/fonts/ms_fonts -R &&
sudo chmod 644 /usr/local/share/fonts/ms_fonts/* -R &&
sudo chmod 755 /usr/local/share/fonts/ms_fonts &&
sudo fc-cache -fv &&
echo -e "\e[00;32mFONT INSTALADO COM SUCESSO\e[00m"
