#!/bin/bash
set -e

# Add Microsoft repo
sudo curl -o /etc/yum.repos.d/mssql-tools.repo \
  https://packages.microsoft.com/config/rhel/7/prod.repo

# Install unixODBC dev (prerequisite) and sqlcmd
sudo yum install -y unixODBC-devel
sudo ACCEPT_EULA=Y yum install -y mssql-tools

# Add sqlcmd to PATH
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
source ~/.bash_profile

echo "✔️ sqlcmd installed. Version:"
sqlcmd -?
