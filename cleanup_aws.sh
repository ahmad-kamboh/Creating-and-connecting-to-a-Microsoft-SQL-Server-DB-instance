#!/bin/bash
set -e

# === EDIT THESE ===
EC2_INSTANCE_ID="i-0123456789abcdef0"
RDS_INSTANCE_ID="database-test1"
AWS_REGION="us-east-1"
# ==================

echo "⏳ Terminating EC2 instance $EC2_INSTANCE_ID..."
aws ec2 terminate-instances \
  --instance-ids "$EC2_INSTANCE_ID" \
  --region "$AWS_REGION"

aws ec2 wait instance-terminated \
  --instance-ids "$EC2_INSTANCE_ID" \
  --region "$AWS_REGION"
echo "✔️ EC2 terminated."

echo "⏳ Deleting RDS instance $RDS_INSTANCE_ID..."
aws rds delete-db-instance \
  --db-instance-identifier "$RDS_INSTANCE_ID" \
  --skip-final-snapshot \
  --region "$AWS_REGION"

aws rds wait db-instance-deleted \
  --db-instance-identifier "$RDS_INSTANCE_ID" \
  --region "$AWS_REGION"
echo "✔️ RDS instance deleted."

echo "✅ AWS resources cleaned up."
