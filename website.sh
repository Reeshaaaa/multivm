#!/bin/bash

yum install httpd wget unzip vim -y
systemctl start httpd
systemctl enable httpd
mkdir -p /tmp/finance
cd /tmp/finance
wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip
unzip -o 2135_mini_finance.zip
cp -r 2135_mini_finance/* /var/www/html/
systemctl restart httpd
rm -rf /tmp/finance