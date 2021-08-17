aws rds create-db-instance ^
    --db-name DEMO_DB ^
    --db-instance-identifier <YOUR-INITIALS>-<YOUR-COHORT>-b2s-db ^
    --allocated-storage 100 ^
    --db-instance-class db.t3.medium ^
    --engine postgres ^
    --master-username <USERNAME> ^
    --master-user-password <PASSWORD> ^
    --publicly-accessible ^
    --vpc-security-group-ids <SECURITY-GROUP-ID-FROM-EARLIER-COMMAND>