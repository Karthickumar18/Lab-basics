# 2) Your First Terraform Apply: EC2 (20 min)

In this section, you will create your **first Terraform project** and use it to launch an Amazon EC2 instance in your AWS account. This is the "Hello World" of Terraform on AWS.


## Step 1: Create a new project directory

```bash
mkdir -p ~/terraform-ec2-lab && cd ~/terraform-ec2-lab
```
- `mkdir -p ~/terraform-ec2-lab` → Creates a folder called `terraform-ec2-lab` in your home directory. The `-p` option ensures the folder is created even if parent directories don’t exist.  
- `cd ~/terraform-ec2-lab` → Moves into this new folder so you can keep your Terraform files organized.

This directory will hold all the configuration files for this project.


## Step 2: Create the main configuration file

Create a new file named **main.tf** and paste the following code:

```hcl
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "lab_instance" {
  ami           = "ami-0e6329e222e662a52" # Amazon Linux 2 (Mumbai)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Lab-Instance"
  }
}
```

### Explanation of the code

- **provider "aws"**  
  Tells Terraform to use the AWS provider. The region is set to `ap-south-1` (Mumbai). This determines where your resources will be created.

- **resource "aws_instance" "lab_instance"**  
  Declares that we want to create an EC2 instance resource in AWS.  
  - `ami`: The Amazon Machine Image (AMI) ID that defines the OS. Here we use Amazon Linux 2 in the Mumbai region.  
  - `instance_type`: Specifies the hardware size of the instance. `t2.micro` is eligible for AWS Free Tier.  
  - `tags`: Adds a tag so the instance will appear in AWS Console with the name **Terraform-Lab-Instance**.


## Step 3: Initialize Terraform

```bash
terraform init
```
- Downloads the AWS provider plugin.  
- Prepares your working directory for use with Terraform.


## Step 4: Preview the changes

```bash
terraform plan
```
- Shows the actions Terraform **will take** without actually applying them.  
- Useful for double-checking that the configuration does what you expect.


## Step 5: Apply the configuration

```bash
terraform apply -auto-approve
```
- Creates the EC2 instance in AWS according to your configuration.  
- The `-auto-approve` flag skips the interactive “yes/no” confirmation step. (Normally Terraform asks before making changes.)


## Step 6: Verify in AWS Console

1. Log in to the AWS Management Console.  
2. Navigate to **EC2 → Instances**.  
3. You should see a running instance named **Terraform-Lab-Instance**.  
4. Confirm its details:  
   - Instance type: `t2.micro`  
   - AMI: Amazon Linux 2  
   - Region: ap-south-1 (Mumbai)


## Wrap-Up

Congratulations! 🎉 You just:
- Wrote your first Terraform configuration.  
- Initialized Terraform.  
- Planned and applied infrastructure changes.  
- Verified the deployed EC2 instance in AWS.

This is the foundation of Infrastructure as Code: **describe what you want → apply → verify**.
