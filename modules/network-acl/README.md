# Network ACL Module

Terraform module for creating an AWS Network ACL.

## Usage

```hcl
module "network_acl" {
  source = "git::https://github.com/<username>/terraform-modules.git//modules/network-acl"

  name          = "my-network-acl"
  vpc_id        = "vpc-xxxxxxxx"
  ingress = [
    {
      from_port  = 443
      to_port    = 443
      protocol   = "tcp"
      cidr_block = "10.1.0.0/16"
      action     = "allow"
      rule_no    = 200
    }
  ]

  egress = [
    {
      from_port  = 443
      to_port    = 443
      protocol   = "tcp"
      cidr_block = "10.1.0.0/16"
      action     = "allow"
      rule_no    = 100
    }
  ]

  tags = {
    Environment = "dev"
    Project     = "networking"
  }
}