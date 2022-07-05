#! /bin/bash
sudo apt-get update \
sudo apt-get install -y apache2 \
git clone https://github.com/james-cole2015/wrecked-machine.git \
#cd wrecked-machine \
sudo cp -r * /var/www/html \
sudo systemctl start apache2 \
sudo systemctl enable apache2
