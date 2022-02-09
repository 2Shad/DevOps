#!/bin/bash
sudo apt update -y && sudo apt upgrade -y
echo "export DB_HOST='mongodb://shaddb.duckdns.org:27017/posts'" >> /root/.bashrc
source /root/.bashrc 
cd /home/ubuntu/sync/app && screen -d -m npm start