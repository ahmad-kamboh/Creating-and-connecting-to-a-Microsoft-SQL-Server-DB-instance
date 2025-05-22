#!/bin/bash
# create_ec2_instance.sh — Launch a Windows EC2 instance for SSMS access

set -e

# === EDIT THESE ===
KEY_NAME="your-key-pair"
SEC_GROUP="sg-0123456789abcdef0"
SUBNET_ID="subnet-0123456789abcdef0"
INSTANCE_TYPE="t2.micro"
AMI_ID="ami-0abcdef1234567890"   # Windows Server 2022 Base AMI
TAG_NAME="ec2-database-connect"
AWS_REGION="us-east-1"
# ==================

echo "🚀 Launching EC2 instance..."
INSTANCE_ID=$(aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_NAME \
  --security-group-ids $SEC_GROUP \
  --subnet-id $SUBNET_ID \
  --region $AWS_REGION \
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$TAG_NAME}]" \
  --query 'Instances[0].InstanceId' --output text)

echo "Instance launched: $INSTANCE_ID"
echo "Waiting until instance is running..."
aws ec2 wait instance-running --instance-ids $INSTANCE_ID --region $AWS_REGION
echo "✔️ EC2 $INSTANCE_ID is now running."
