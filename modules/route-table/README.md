# Route table Module

Terraform module for creating an AWS Route Table.

## Usage

```hcl
module "route_table" {
  source = "git::https://github.com/<username>/terraform-modules.git//modules/route_table"
  name              = "my-route-table"
  vpc_id        = "vpc-xxxxxxxx"
  routes = [
    {
      cidr_block                = "10.1.0.0/16"
      vpc_peering_connection_id = "pcx-xxxxxxxx"
    }
  ]
  tags = {
    Environment = "dev"
    Project     = "networking"
  }
}