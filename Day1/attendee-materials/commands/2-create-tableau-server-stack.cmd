aws cloudformation create-stack ^
    --stack-name <YOUR-INITIALS>-<YOUR-COHORT>-b2s-tableau-server ^
    --template-body file://cloudformation/tableau-server-ubuntu.yaml ^
    --parameters ParameterKey=KeyPairName,ParameterValue=<KEY-PAIR-NAME-FROM-EARLIER-COMMAND>