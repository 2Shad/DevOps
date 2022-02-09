#!/bin/bash
sudo apt update -y && sudo apt upgrade -y
sudo su ubuntu && source /home/ubuntu/.bashrc && cd /home/ubuntu/sync/app && screen -d -m npm start