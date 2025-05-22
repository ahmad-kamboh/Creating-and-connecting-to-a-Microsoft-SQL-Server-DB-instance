#!/bin/bash
# create_rds_instance.sh — Create an RDS SQL Server DB instance

set -e

# === EDIT THESE ===
DB_IDENTIFIER="database-test1"
DB_INSTANCE_CLASS="db.t2.micro"
ENGINE="sqlserver-ex"
MASTER_USER="admin"
MASTER_PASS="YourSecurePassw0rd"
ALLOCATED_STORAGE=20
VPC_SECURITY_GROUP="sg-0123456789abcdef0"
AVAILABILITY_ZONE="us-east-1a"
AWS_REGION="us-east-1"
PUBLIC_ACCESS="true"
# ==================

echo "🚀 Creating RDS SQL Server instance..."
aws rds create-db-instance \
  --db-instance-identifier $DB_IDENTIFIER \
  --db-instance-class $DB_INSTANCE_CLASS \
  --engine $ENGINE \
  --master-username $MASTER_USER \
  --master-user-password $MASTER_PASS \
  --allocated-storage $ALLOCATED_STORAGE \
  --vpc-security-group-ids $VPC_SECURITY_GROUP \
  --availability-zone $AVAILABILITY_ZONE \
  --publicly-accessible $PUBLIC_ACCESS \
  --no-multi-az \
  --region $AWS_REGION

echo "Waiting until RDS instance is available..."
aws rds wait db-instance-available --db-instance-identifier $DB_IDENTIFIER --region $AWS_REGION
ENDPOINT=$(aws rds describe-db-instances \
  --db-instance-identifier $DB_IDENTIFIER \
  --region $AWS_REGION \
  --query 'DBInstances[0].Endpoint.Address' --output text)

echo "✔️ RDS instance available at: $ENDPOINT:1433"
