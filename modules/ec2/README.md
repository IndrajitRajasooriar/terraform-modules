# EC2 Instance Module

Terraform module for creating an EC2 instance.

## Usage

```hcl
module "ec2" {

  source = "git::https://github.com/<username>/terraform-modules.git//modules/ec2"

  name          = "my-ec2"
  ami           = "ami-xxxxxxxx"
  instance_type = "t3.micro"

  subnet_id = "subnet-xxxxxxxx"

  vpc_security_group_ids = [
    "sg-xxxxxxxx",
    "sg-yyyyyyyy"
  ]

  tags = {
    Environment = "dev"
    Project     = "networking"
  }
}
```
