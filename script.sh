#!/bin/bash

echo "Atualizando o sistema..."
apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip

echo "Baixando arquivos do sistema..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
echo "Finish..."
