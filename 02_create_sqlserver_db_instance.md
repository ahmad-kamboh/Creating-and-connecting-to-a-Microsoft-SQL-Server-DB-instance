# 2. Create a SQL Server DB Instance

1. AWS Console → RDS → **Create database**  
2. Choose **Easy create**.  
3. **Engine**: Microsoft SQL Server  
4. **DB instance identifier**: `database-test1`  
5. **Master username**: keep default or enter your own  
6. **Password**: auto-generate or specify  
7. **Set up EC2 connection (optional)**:  
   - Select **Connect to an EC2 compute resource**  
   - Choose the `ec2-database-connect` instance  
8. **Create database** → Wait until status is **Available**.  
9. Note the **endpoint** (DNS name) and **port** (default 1433).
