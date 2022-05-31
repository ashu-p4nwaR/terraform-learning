#!/bin/bash

sudo yum update -y
sudo yum install httpd -y
sudo systemctl enable httpd && sudo systemctl start httpd
echo "<h1>initKloud</h1>File Module Example in Terraform." >> /var/www/html/index.html
