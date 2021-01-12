#!/bin/bash

sleep 90
sudo yum install xfsprogs -y
sudo mkfs -t xfs /dev/xvdb
sudo mkfs -t xfs /dev/xvdc
sudo mkdir /usr/share/nginx
sudo mount /dev/xvdb /usr/share/nginx
sudo mkdir /var/log/nginx
sudo mount /dev/xvdc /var/log/nginx
sudo yum install nginx -y
sudo service nginx start
sudo rm -rf /usr/share/nginx/html/index.html
sudo echo '<html><head><title>Server Instance '"$(uuidgen)"'</title></head><body style=\"background-color:#107080\"><p style=\"text-align: center;\"><span style=\"color:#FFFFFF;\"><span style=\"font-size:28px;\">Server Instance '"$(uuidgen)"'</span></span></p></body></html>' | sudo tee /usr/share/nginx/html/index.html