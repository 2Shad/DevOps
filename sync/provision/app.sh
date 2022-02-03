#!/bin/bash

# run updates and upgrades
sudo apt update -y && sudo apt upgrade -y
# install nginx
sudo apt install nginx -y
# install python-software-properties
sudo apt install python-software-properties
# install nodejs v6.x
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
# install nodejs
sudo apt-get install -y nodejs
# install pm2 with global flag
sudo npm install pm2 -g
# install forever with global flag
sudo npm install forever -g
# replacing reverse proxy configuration for nginx appropriatly for our app
sudo cp /home/vagrant/app/default /etc/nginx/sites-available/
# restarting nginx service
sudo systemctl restart nginx
echo "export DB_HOST='mongodb://192.168.10.150:27017/posts'" >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc
# cd into app folder and npm install and start the server
cd /home/vagrant/app/app && npm install && forever start app.js