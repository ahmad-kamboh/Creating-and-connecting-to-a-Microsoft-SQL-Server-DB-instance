# 1. Create an EC2 Instance

1. Sign in to the AWS Console → EC2 → **Launch instance**.  
2. **Name and tags**: `ec2-database-connect`  
3. **AMI**: Windows → Microsoft Windows Server 2022 Base  
4. **Instance type**: `t2.micro`  
5. **Key pair**: Select or create a new one.  
6. **Network settings**: Allow RDP (port 3389) from your IP.  
7. **Storage & Tags**: Keep defaults.  
8. **Review & Launch** → Note the Instance ID (e.g., `i-0123456789abcdef0`).  
9. Wait until the instance state is **Running**.
