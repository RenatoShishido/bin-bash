#!/bin/bash
#Instalando o sublimeText
apt --purge remove sublime-text &&
apt update &&
apt upgrade &&
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg |  apt-key add - &&
apt-get install apt-transport-https &&
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &&
apt-get update &&
apt-get install sublime-text &&
echo -e "\e[00;32mSUBLIME TEXT INSTALADO COM SUCESSO\e[00m"

#Instalando Virtual Box
apt update && 
apt upgrade &&
apt install virtualbox &&
echo -e "\e[00;32mVIRTUALBOX INSTALADO COM SUCESSO\e[00m"

#Instalando Git
apt update && 
apt upgrade &&
apt install git &&
echo -e "\e[00;32mGIT INSTALADO COM SUCESSO\e[00m"

#Instalando o Docker
apt update && 
apt upgrade &&
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
apt-key fingerprint 0EBFCD88 &&
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" &&
apt update &&
apt-get install docker-ce docker-ce-cli containerd.io &&
echo -e "\e[00;32mDOCKER INSTALADO COM SUCESSO\e[00m"

#Instalando o Docker-Compose
apt update && 
apt upgrade &&
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
sudo chmod +x /usr/local/bin/docker-compose &&
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose &&
echo -e "\e[00;32mDOCKER-COMPOSE INSTALADO COM SUCESSO\e[00m"

#Insomnia
apt update && 
apt upgrade &&
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list &&
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add - &&
apt update &&
apt-get install insomnia &&
echo -e "\e[00;32mINSOMNIA INSTALADO COM SUCESSO\e[00m"

#Instalando Spotify
apt update && 
apt upgrade &&
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - &&
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list &&
apt-get update &&
apt-get install spotify-client &&
echo -e "\e[00;32mSPOTIFY INSTALADO COM SUCESSO\e[00m"

#Postman
apt update && 
apt upgrade &&
sudo snap install postman &&
echo -e "\e[00;32mPOSTMAN INSTALADO COM SUCESSO\e[00m"


#Instalando Slack
apt update && 
apt upgrade &&
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.0-amd64.deb -O slack.deb &&
dpkg -i slack.deb && 
apt-get install -f &&
apt install ./slack.deb &&
echo -e "\e[00;32mSLACK INSTALADO COM SUCESSO\e[00m"

#Instalando o VisualStudioCode
apt update &&
apt upgrade &&
sudo apt install software-properties-common apt-transport-https wget &&
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" &&
sudo apt update &&
sudo apt install code &&
echo -e "\e[00;32mVISUAL STUDIO CODE INSTALADO COM SUCESSO\e[00m"





