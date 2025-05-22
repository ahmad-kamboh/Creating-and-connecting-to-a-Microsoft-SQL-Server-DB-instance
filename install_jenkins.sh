#!/bin/bash
# install_jenkins.sh — Install and configure Jenkins

set -e

# 1. Install Java (required by Jenkins)
sudo yum update -y
sudo yum install -y java-11-openjdk-devel

# 2. Add Jenkins repo and import key
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# 3. Install Jenkins
sudo yum install -y jenkins

# 4. Start and enable Jenkins service
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl enable jenkins

# 5. Open firewall port if firewalld is running
if systemctl is-active --quiet firewalld; then
  sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
  sudo firewall-cmd --reload
fi

echo "Jenkins installed and running on port 8080"
echo "Initial Admin Password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
