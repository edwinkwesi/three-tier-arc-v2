#!/bin/bash
sudo su 
sudo apt-get -y update

sudo apt-get -y install apache2


sudo service apache2 start
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html

