aws ec2 create-key-pair ^
    --key-name <YOUR-INITIALS>-<YOUR-COHORT>-aws-b2s-key-pair ^
    --query KeyMaterial ^
    --output text > <YOUR-INITIALS>-<YOUR-COHORT>-aws-b2s-key-pair.pem