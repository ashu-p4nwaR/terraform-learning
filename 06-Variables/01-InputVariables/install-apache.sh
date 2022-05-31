#!/bin/bash

sudo yum update -y
sudo yum install httpd -y
sudo systemctl enable httpd
sudo systemctl start httpd
echo "<h1>Welcome to initkloud</h1></br> This is Terraform Testing page." > /var/www/html/index.html