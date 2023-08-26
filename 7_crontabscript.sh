crontab -e //It will open the vim editor 

30 20 * * 1-5 
// 30 refers to minutes in format MM
// 20 refers to hour in format HH
// * refers to date of month (* --> daily)
// * refers to month in a year (* --> every month)
// 1-5 refers to day of the week (1-5 --> Monday to Friday)

#!/bin/bash
echo "##############################################################"
echo "Script for mysql backup"
30 20 * * 1-5 mysqldump -u root -p dummy ams &>> /home/ec2-user/bash_script/ams.sql
date
echo "###############################################################"
echo "Database Backup Completed Successfully"
