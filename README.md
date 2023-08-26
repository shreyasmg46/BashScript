# BashScript
Bash Script for automating the steps of the deployment
Web page deployment has done with sample html template from tooplate.com

# Script_1
The file contains system uptime, memory and disk utilization by each instance

# Script_2
The first step contains the installation steps of httpd package on amazon-linux and enabling the httpd service
Creating the directory in temp directory
Default path of httpd - /var/www/html
Third step includes the downloading the sample html files from tooplate.com to /var/www/html
Restarting the httpd service 
After the deployment of sample html files, tmp directory will be deleted.

# Script_3
This script has the same procedure of the above script with variable declaration.

# Script_4
This script has the same steps following to both script_2 and script_3
While running this script we have to pass the argument (i.e package names which has to be installed on virtual machines)

# Script_5
This script is used to findout the available RAM, LOAD on the machine and free size of the disk

# Script_6
This script checks whether the particular service is running or not

# Script_7
This Crontab script is used to get the .sql file for backup of database 
MM HH DOM MM(Month) DOW
