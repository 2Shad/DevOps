#!/bin/bash
sudo apt update -y && sudo apt upgrade -y
sudo su ubuntu && echo "cd /home/ubuntu/sync/app && screen -d -m npm start" >> /home/ubuntu/.bashrc && source /home/ubuntu/.bashrc && sudo su && sudo su ubuntu