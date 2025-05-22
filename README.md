# Creating-and-connecting-to-a-Microsoft-SQL-Server-DB-instance
# 📊 SQL Server on AWS RDS Automation

![WhatsApp Image 2025-05-22 at 01 09 04_58d1fe31](https://github.com/user-attachments/assets/7935308e-b0cb-4e98-a098-87bfa82893a1)

This repository provides an end-to-end, script-driven solution to:

1. Launch a Windows EC2 instance (for SSMS connectivity)  
2. Provision an Amazon RDS SQL Server instance  
3. Install and configure the `sqlcmd` CLI on Linux  
4. Test connectivity and run sample queries  
5. Tear down all AWS resources  

Use these scripts to streamline your demo, proof-of-concept, or production rollout of SQL Server on AWS RDS.

---

## 🚀 Features

- **Fully automated** EC2 & RDS provisioning via AWS CLI  
- **Automated** installation of Microsoft’s `sqlcmd` tools  
- **Connectivity tests** with `sqlcmd` and saved query output  
- **Clean-up** script to terminate EC2 and delete RDS  
- **Single-entry point** `commands.sh` orchestrator  

---

## 🖥️ Prerequisites

1. **AWS CLI v2** installed and configured (`aws configure`)  
2. **IAM user/role** with permissions for EC2, RDS, and IAM  
3. **SSH key pair** in your target region for EC2  
4. **Security groups** pre-configured for:
   - RDP (TCP 3389) to your Windows EC2  
   - MySQL/SQL Server (TCP 1433) between EC2 and RDS  

---
![WhatsApp Image 2025-05-22 at 01 04 31_23722383](https://github.com/user-attachments/assets/a94de12d-921e-42e6-bea7-5554545d0435)

## 📁 Repository Structure

```text
.
├── README.md
├── commands.sh
├── create_ec2_instance.sh
├── create_rds_instance.sh
├── install_sqlcmd.sh
├── test_sqlserver_connection.sh
└── cleanup_aws.sh

📞 Contact Information

| **Method** | **Details**                  |
|------------|------------------------------|
| Email      | ahmadtahir4235@gmail.com     |
| Phone      | +92 3000511136               |
| LinkedIn   | https://linkedin.com/in/m-ahmadtahir |

