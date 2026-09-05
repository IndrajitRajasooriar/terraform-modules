# VPC Module

Terraform module for creating an AWS VPC.

## Usage

```hcl
module "vpc" {
  source = "git::https://github.com/<username>/terraform-modules.git//modules/vpc"

  name       = "my-vpc"
  cidr_block = "10.0.0.0/16"

  tags = {
    Environment = "dev"
    Project     = "networking"
  }
}