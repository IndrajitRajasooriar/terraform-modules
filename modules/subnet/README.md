# Subnet Module

Terraform module for creating an AWS Subnet.

## Usage

```hcl
module "subnet" {
  source = "git::https://github.com/<username>/terraform-modules.git//modules/subnet"

  name              = "my-subnet"
  cidr_block        = "10.0.1.0/24"
  vpc_id            = "vpc-xxxxxxxx"
  availability_zone = "us-west-1a"

  tags = {
    Environment = "dev"
    Project     = "networking"
  }
}