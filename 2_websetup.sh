#!/bin/bash

#Installing Dependencies
echo "#######################################################"
echo "Installing Packages"
echo "#######################################################"
sudo yum install wget unzip httpd -y > /dev/null #Avoiding O/P to /dev/null
echo

#Start & Enable Service
echo "########################################################"
echo "Start & Enable Service"
sudo systemctl start httpd
sudo systemctl status httpd
echo

#Creating Temp Directory
echo "##########################################################"
echo "Starting Artifact Deployment"
echo "##########################################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null
unzip 2098_health.zip > /dev/null
sudo cp -r 2098_health/* /var/www/html/
echo

#Restart the service
echo "############################################################"
echo "Restarting HTTPD Service"
sudo systemctl restart httpd
echo

#Clean Up
echo "##############################################################"
echo "Removing Temporary Files"
echo "#############################################################"
rm -rf /tmp/webfiles
echo

sudo systemctl status httpd

echo "#################################################################"
ls /var/www/html
echo "################################################################"
