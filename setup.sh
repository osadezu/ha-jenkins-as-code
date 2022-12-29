#!/bin/bash

echo "Install Jenkins stable release"
yum remove -y java
yum install -y java-11-openjdk
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://jenkins.io/redhat/jenkins-ci.org.key
yum install -y jenkins
chkconfig jenkins on
service jenkins start

# echo "Journalctl debug step"
# journalctl -xe
# echo "Systemctl debug step"
# systemctl status jenkins.service
