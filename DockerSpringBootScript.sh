
#!/bin/bash
if sudo docker ps -a | grep spring-boot #check to see if the spring boot exists
then
sudo docker stop spring-boot-hello-world #stop existing container
sudo docker rm spring-boot-hello-world #remove existing container
sudo docker rmi spring-boot-hello-world #remove existing spring boot image
fi

mvn clean package #create new maven package

sudo docker build -t spring-boot-hello-world:latest . #build a new spring boot image
sudo docker run -d -p 9000:9000 --name spring-boot-hello-world spring-boot-hello-world #runs and names image and the specifies the location	   

