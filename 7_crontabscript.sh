#!/bin/bash

echo "##############################################################"
echo "Script for mysql backup"
mysql -u root -p dummy ams > /home/ec2-user/bash_script/ams.sql
date
echo "###############################################################"
echo "Database Backup Completed Successfully"
