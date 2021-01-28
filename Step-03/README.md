# How can we host this little website on Amazon S3?

[Official Docs](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/static-website-hosting.html)

# Step 0

Make sure you have the AWS CLI configured

```
aws configure
```

Run a test to see all bucket in your profile

```
aws s3 ls --profile yourprofile
```

# Step 1

We need to create an S3 bucket

```
aws s3 mb s3://mybucket --region us-west-1
```

Where mybucket the name is of your bucket

- Need to be globally unique! And LOWERCASE!

OR

```
aws s3api create-bucket --bucket myBucket --profile myawsprofile --region eu-west-1 --create-bucket-configuration LocationConstraint=eu-west-1
```

# Step 2

We now need to upload files to it

```
aws s3 cp index.html s3://mybucket
```

OR

```
aws s3 sync folderToUploadOrFile s3://nameofbucket
```

# Step 3

Configure our S3 bucket to be public accessible

- Create json file with the appropriate ACL / bucket policy and update the name of the bucket in the policy

```
aws s3api put-bucket-policy --bucket nameofBucket --policy file://policy.json --profile myawsprofile
```

# Step 4

Tell AWS this should be website

```
aws s3 website s3://nameofbucket/ --index-document index.html --error-document error.html
```

Check out the website!

# Step 5

Delete the bucket and also the website

```
aws s3 rb s3://bucket-name --force
```

# Step 6

Do this all in a bash script

```bash
#!/bin/bash
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowPublicReadAccess",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::bucketName/*"
    }
  ]
}
' > ./bucket_policy.json

aws s3api create-bucket --bucket bucketnameunique --region eu-west-1  --create-bucket-configuration LocationConstraint=eu-west-1 --profile myawsprofile \
  && aws s3api put-bucket-policy --bucket bucketnameunique --policy file://bucket_policy.json --profile myawsprofile \
  && aws s3 sync file s3://bucketnameunique/  --profile myawsprofile \
  && aws s3 website s3://bucketnameunique/ --index-document index.html --error-document error.html --profile myawsprofile
```
