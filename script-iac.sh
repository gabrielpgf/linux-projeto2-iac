#!/bin/bash

echo "Atualizando o sistema...."

apt-get update 
apt-get upgrade -y

echo "Instalando o Apache...."

apt install apache2 -y

echo "Ativando os serviços do Apache...."
systemctl start apache2
systemctl enable apache2

echo "Instalando o unzip...."

apt install unzip -y

echo "Baixando os arquivos...."

cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo arquivos...."
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/

cd ..
rm -rf linux-site-dio-main

