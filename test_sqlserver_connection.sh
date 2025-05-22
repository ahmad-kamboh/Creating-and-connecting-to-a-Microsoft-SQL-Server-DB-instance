#!/bin/bash
set -e

# Load credentials (if you have rds_config.env)
if [[ -f ./rds_config.env ]]; then
  source ./rds_config.env
fi

if [[ -z "$RDS_ENDPOINT" || -z "$RDS_USER" ]]; then
  echo "Please set RDS_ENDPOINT and RDS_USER (and RDS_PASSWORD) in environment."
  exit 1
fi

echo "Connecting to $RDS_ENDPOINT..."
sqlcmd -S "${RDS_ENDPOINT},1433" -U "$RDS_USER" -P "$RDS_PASSWORD" \
  -Q "SELECT TOP 5 name FROM sys.databases;" \
  -o connection_test.txt

echo "✔️ Query results saved to connection_test.txt"
cat connection_test.txt
