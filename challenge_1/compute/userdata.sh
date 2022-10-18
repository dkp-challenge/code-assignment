#!/bin/bash

#installing Apache and Amazon EFS utlities
yum install httpd -y
yum install amazon-efs-utils -y
echo "<h1><b>Challenge 1 completed. Application is up and running<b><h1>" > /var/www/html/index.html
service httpd start

#Enabling password login
sed 's/PasswordAuthentication no/PasswordAuthentication yes/' -i /etc/ssh/sshd_config
systemctl restart sshd
service sshd restart

useradd admin
echo ${password} | passwd --stdin admin
sudo usermod -aG wheel admin

#Mounting EFS on /var/log
mount -t efs ${efs_id}:/ /var/log