# 4. Modify RDS Connectivity (if you see connection errors)

1. RDS Console → Databases → select `database-test1` → **Modify**  
2. Scroll to **Connectivity & security** → **Additional configuration**  
3. Set **Public accessibility** to **Yes**  
4. Apply changes (no downtime for this setting).  
5. Ensure the RDS security group allows inbound on port **1433** from your EC2’s security group.
