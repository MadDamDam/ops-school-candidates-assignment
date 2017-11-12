#!/bin/bash
#add fix to exercise3 here

sudo sed -i.bak '12 c\                Order deny,allow' /etc/apache2/sites-available/default
sudo sed -i '12 a\                Allow from 192.168.100.0/255.255.255.0 ::1/128' /etc/apache2/sites-available/default
sudo service apache2 reload
