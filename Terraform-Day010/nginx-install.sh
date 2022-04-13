#!/bin/bash
#Simple bash script to install nginx package and then start the nginx service
sudo yum update -y
sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl status nginx
