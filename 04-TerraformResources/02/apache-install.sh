#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo service httpd start
sudo systemctl enable httpd
echo "Welcome to initkloud! </br> This is First website created through Terraform in US_EAST_1 region.</br><hr size='3'> Ashish Panwar</br>Dev+Ops Engineer." > /var/www/html/index.html


if [ $? -eq 0 ]
then
    echo "executed successfully"
fi