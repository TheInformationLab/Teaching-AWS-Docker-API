Now we want to use AWS to deploy our Docker container!

# Step 1: Login to ECR - registry

```
aws ecr get-login-password --region REGIONHERE!!!! | docker login --username AWS --password-stdin ACCOUNTIDHERE!!!!.dkr.ecr.REGIONHERE!!!.amazonaws.com
```

Get your account number:

```
aws sts get-caller-identity --profile name_of_profile
```

# Step 2: Tag the version

```
docker tag test:latest YOURACCOUNT.dkr.ecr.YOURREGION-1.amazonaws.com/YOURREPO:YOURTAG
```

# Step 3: Upload to ECR

```
docker push YOURACCOUNT.dkr.ecr.YOURREGION.amazonaws.com/YOURREPO:YOURTAG
```
