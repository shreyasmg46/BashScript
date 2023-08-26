#!/bin/bash

#Variable Decalartion for Websetup
PACKAGE="httpd unzip wget"
SERVICE="httpd"
URL='https://www.tooplate.com/zip-templates/2098_health.zip'
ARTIFACT_NAME='2098_health'
TEMPDIR="/tmp/webfiles"

#Installing Depenedencies
echo "#########################################################"
echo "Installing Packages"
echo "#########################################################"
sudo yum install $PACKAGE -y > /dev/null
echo

#Start the Enable Service
echo "########################################################"
echo "Start & Enable HTTPD Service"
echo "#######################################################"
sudo systemctl start $SERVICE
sudo systemctl enable $SERVICE
echo

#Creating Temp Directory
echo "######################################################"
echo "Starting Artifact Deployment"
echo "######################################################"
mkdir -p $TEMPDIR
echo

wget $URL > /dev/null
unzip $ARTIFACT_NAME.zip > /dev/null
sudo cp -r $ARTIFACT_NAME/* /var/www/html
echo 

#Restarting the HTTPD Service
echo "############################################################"
echo "Restart the HTTPD Service"
echo "#################################################################"
systemctl restart $SERVICE
echo

sudo systemctl status $SERVICE
ls /var/www/html
