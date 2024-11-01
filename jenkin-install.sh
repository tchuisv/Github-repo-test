#!/bin/bash

#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN
#sudo su 
yum install git
yum install java-1.8.0-openjdk
#yum install maven
#(or)
yum install git java-1.8.0-openjdk maven -y

#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
#OFFICIAL website -> jenkins.io

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#STEP-3: DOWNLOAD JAVA11 AND JENKINS
amazon-linux-extras install java-openjdk11 -y
yum install jenkins -y
update-alternatives --config java

#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl start jenkins.service
systemctl status jenkins.service
cat /var/lib/jenkins/secrets/initialAdminPassword


# CONNECT:
# copy-public-ip:8080 (browser)
# cat /var/lib/jenkins/secrets/initialAdminPassword (server)
# paster password on browser -- > installing plugins --- > user details -- > start



# CREATING A JOB:
# NEW ITEM -- > NAME: ABC -- > FREESTYLE -- > OK -- > SCM -- > GIT -- > REPOURL: https://github.com/devopsbyraham/jenkins-java-project.git -- >Build Steps -- > ADD Build Steps -- > Execute shell -- > mvn clean package -- > save -- > build now

# WORKSPACE: where your job output is going to be stored
# Default: /var/lib/jenkins/workspace

#MAVEN STUFFS
#mvn clean package
#Building war: /var/lib/jenkins/workspace/first-prof/target/NETFLIX-1.2.2.war
