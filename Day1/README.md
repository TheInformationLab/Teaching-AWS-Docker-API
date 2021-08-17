# Back to School 3 - Dev Session - Day 1 - AWS

## Walkthrough

### Trainer Only

- Add a new Password and Access Key ID / Secret Access Key to the `b2s-training` user in IAM
- Add the credentials to the Google Doc
- Create an infrastructure stack with the `trainer-materials/cloudformation/infrastructure.yaml` template

### Getting Access to AWS

- Download the prerequisite tools listed in the Google Doc
- Use the password to log in to the AWS Console and explore the interface
- Open Command Prompt
- Run `aws configure` to set up the authenitcation for AWS CLI
- Run `aws s3 ls` to confirm that the authentication has been set up correctly

### Prepare for creating resources in AWS

- Download this repository (can be done with `git clone` or just download the zip from GitHub)
- Open VS Code at this folder location
- Open a new Terminal in VS Code
- Switch the terminal from `powershell` to `cmd`
- Run `aws s3 ls` again to test that everthing is still working
- Run the `cd attendee-materials` command

### Running AWS Commands

- Before running each command be sure to update any text between `<` and `>`
- Create a key pair to gives you permission to access your Tableau Server EC2 instance
- Create a CloudFormation Stack that will build the EC2 Instance and install Tableau Server
- Check that Tableau has installed correctly, can you access the EC2 instance, can you log in to Tableau Server in your browser
- Create a Security Group to house the rules that will allow you access your RDS database
- Create two inbound rules on your Security group to permit access from your current IP address and from the Tableau Server IP address
- Create an PostgreSQL database in the RDS Service so you can store some data to consume in Tableau

### Check Connectivity

- Check you have a PostgreSQL driver downloaded locally
- Create a User DSN in the ODBC Data Source Administrator (64-bit)
- Connect to that DSN in with an Input tool in Alteryx
- Start a web edit session on your Tableau Server
- Create a new data source connection to the PostgreSQL database
