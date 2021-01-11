# Sysmonitor

This is a Server-Client application which consists of the following components:
* Server
* Client

## Setting up the Server:

* Go to Cloudformation service dashboard and click on create stack and use the following S3 url, as shown in the image:

        https://s3.ap-south-1.amazonaws.com/cf-templates-1auc82aqo45as-ap-south-1/2021011F3z-ec2.json

   ![ClouFormationS3URL](/images/cfs3url.png)

* You can select any key pair and use the remaining default values and launch the stack

* In the output resources, you will find the browser accessible url for the server

   ![ServerURL](/images/outputs3.png)

## Setting up the Client:

**The only prerequisite is that Docker should be installed on the client which you want to monitor**

* Download the client setup script and cchange it's perission and execute it to setup the client:

    wget https://raw.githubusercontent.com/Aditya0404/sysmonitor/main/client/client-setup.sh

    sudo chmod +x client-setup.sh

    sudo bash client-setup.sh

* It will ask for the ip of the server which you will find in the output section of CloudFormation:
   ![ServerIP](/images/serverip.png)


* After Running the client, you can go to the URL for server and see the logs there. 
* Before that, you need to create an index pattern with the name "serverlog" for the first time on kibana:
* Final Output:

   ![KibanaFinal](/images/final.png)
