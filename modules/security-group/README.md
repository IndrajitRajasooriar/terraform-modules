# Security Group Module

Terraform module for creating an AWS Security Group.

## Usage

```hcl
module "security_group" {
  source = "git::https://github.com/<username>/terraform-modules.git//modules/security-group"
  name              = "my-security-group"
  description = "my-security-group description"
  vpc_id        = "vpc-xxxxxxxx"
  ingress = [
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["10.1.0.0/16"]
    }
  ]

  egress = [
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["10.1.0.0/16"]
    }
  ]

  tags = {
    Environment = "dev"
    Project     = "networking"
  }
}