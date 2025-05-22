# 3. Connect to SQL Server via SSMS

1. RDS Console → Databases → select `database-test1`  
2. Connectivity tab → Copy **Endpoint** and **Port**.  
3. RDP into your Windows EC2 (`ec2-database-connect`).  
4. Download & install **SQL Server Management Studio (SSMS)**.  
5. Launch SSMS:  
   - **Server type**: Database Engine  
   - **Server name**: `<endpoint>,1433`  
   - **Authentication**: SQL Server Authentication  
   - **Login**: master username  
   - **Password**: master password  
   - Check **Trust server certificate**  
6. Click **Connect**.
