# Dockerfile to build my own Jenkins image
# sudo docker build -t root/jenkins .
# sudo docker run -d -p 8080:8080 -p 50000:50000 -v /jenkins:/var/jenkins_home root/jenkins
# or deploy image via compose
FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt-get -y update
RUN apt-get -y install ansible
RUN apt-get -y install mc
RUN apt-get -y install net-tools
USER jenkins