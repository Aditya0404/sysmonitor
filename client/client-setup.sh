#!/bin/bash


sudo chmod +r /var/log/secure 
sudo chmod +r /var/log/syslog 
sudo chmod +r /var/log/auth.log

echo Please enter ip of the server which will be available in the output of cloudformation:
read var


sed -i "s/elasticsearch-host/$var/g" fluent.conf

sudo docker build -t clientimage:1.0 .

sudo docker run -d -v /var/log/:/var/log clientimage:1.0

