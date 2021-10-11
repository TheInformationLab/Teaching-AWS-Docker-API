aws ec2 revoke-security-group-ingress ^
    --group-id <SECURITY-GROUP-ID-FROM-EARLIER-COMMAND> ^
    --protocol tcp ^
    --port 5432 ^
    --cidr <YOUR-HOME-IP-ADDRESS>/32