#!/bin/bash

sudo apt-get install git-all

if ! sudo apt-get install git-all
    then echo "Não foi possivel instalar o git"
exit 1
    fi echo "Git instalado com sucesso";




curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg &&
sudo install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/microsoft-archive-keyring.gpg &&
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/usr/share/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' &&
sudo apt-get install apt-transport-https &&
sudo apt-get install apt-transport-https &&
sudo apt-get install code 

if ! sudo apt-get install code
    then "O Vscode não foi instalado corretamente"
exit 1
    fi echo "O Vscode foi instalado corretamente";




sudo apt-get remove docker docker-engine docker.io containerd runc &&
sudo apt-get update &&
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release &&
sudo mkdir -p /etc/apt/keyrings &&
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg &&
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null &&
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin 

if ! sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
    then "O Docker não foi instalado corretamente"
exit 1
    fi echo "O Docker foi instalado corretamente";





sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' &&
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add - &&
sudo apt-get update &&
sudo apt-get -y install postgresql

if ! sudo apt-get -y install postgresql
    then "O PostgreSQL não foi instalado corretamente"
exit 1
    fi echo "O PostgreSQL foi instalado corretamente";




sudo apt-get wget;
wget https://dev.mysql.com/get/mysql-apt-config_0.8.18-1_all.deb &&
sudo dpkg -i mysql-apt-config_0.8.18-1_all.deb &&
sudo apt update &&
sudo apt update &&
sudo apt install -y mysql-community-server

if ! sudo apt install -y mysql-community-server
    then "O MySQL não foi instalado corretamente"
exit 1
    fi echo "O MySQL foi instalado corretamente";




sudo  wget -O /usr/share/keyrings/dbeaver.gpg.key https://dbeaver.io/debs/dbeaver.gpg.key &&
echo "deb [signed-by=/usr/share/keyrings/dbeaver.gpg.key] https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list &&
sudo apt-get update && sudo apt-get install dbeaver-ce 

if ! sudo apt-get install dbeaver-ce
    then "O dbeaver não foi instalado corretamente"
exit 1
    fi echo "O dbeaver foi instalado corretamente";
