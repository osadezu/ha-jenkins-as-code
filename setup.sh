#!/bin/bash

echo "Install Jenkins stable release"
amazon-linux-extras install java-openjdk11
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://jenkins.io/redhat/jenkins-ci.org.key
yum install -y jenkins
chkconfig jenkins on
service jenkins start
