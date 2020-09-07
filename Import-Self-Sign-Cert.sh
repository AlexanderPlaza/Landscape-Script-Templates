#!/bin/bash
#Update packages
sudo apt update
#Install Landscape Package
sudo apt install landscape-client -y
#Copy Landscape Self Sign Certificate from local folder to proper location
sudo cp landscape_server_ca.crt /etc/landscape/server.pem
#Add line to the client.conf file to enable usage of Self Sign Certificate
echo "ssl_public_key = /etc/landscape/server.pem" >> /etc/landscape/client.conf
#Start configuration of landscape client
sudo landscape-config --account-name standalone --url https://Landscape/message-system --ping-url http://Landscape/ping