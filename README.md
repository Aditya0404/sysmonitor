# sysmonitor

This is a Server-Client application which consists of the following components:
* Server
* Client

###### Setting up the Server:

Go to Cloudformation service dashboard and click on create stack and use the following S3 url, as shown in the image:

https://s3.ap-south-1.amazonaws.com/cf-templates-1auc82aqo45as-ap-south-1/2021011F3z-ec2.json

<image>
  
You can select any key pair and use the remaining default values and launch the stack

In the output resources, you will find the browser accessible url for the server

(Image)

###### Setting up the Client:

The only prerequisite is that Docker should be installed on the client which you want to monitor

Run the following two commands to start monitoring ssh logins on the server:

wget https://raw.githubusercontent.com/Aditya0404/sysmonitor/main/client/client-setup.sh

sudo chmod +x client-setup.sh

sudo bash client-setup.sh

It will ask for the ip of the server which you will find in the output section of CloudFormation:
<image>
