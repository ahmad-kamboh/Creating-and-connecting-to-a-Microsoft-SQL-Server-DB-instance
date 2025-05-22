#!/bin/bash
# commands.sh — Common Jenkins and system utilities

set -e

echo "## System Info"
uname -a
java -version

echo "## Jenkins Service Status"
sudo systemctl status jenkins --no-pager

echo "## Jenkins CLI Examples"
JENKINS_CLI_JAR=/usr/lib/jenkins/jenkins-cli.jar
JENKINS_URL=http://localhost:8080

# List all jobs
java -jar $JENKINS_CLI_JAR -s $JENKINS_URL list-jobs

# Create a new job from XML definition
# java -jar $JENKINS_CLI_JAR -s $JENKINS_URL create-job my-job < job-config.xml

# Restart Jenkins safely
# java -jar $JENKINS_CLI_JAR -s $JENKINS_URL safe-restart

echo "Commands complete."
