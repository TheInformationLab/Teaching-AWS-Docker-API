aws ec2 create-security-group ^
    --description "Allows access to postgresql RDS from selected IP addresses for B2S Dev Session" ^
    --group-name <YOUR-INITIALS>-<YOUR-COHORT>-b2s-rds-sg