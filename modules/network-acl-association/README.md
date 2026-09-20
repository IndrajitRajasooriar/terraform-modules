# Terraform AWS Network ACL Association Module

This Terraform module associates an AWS Network ACL with a subnet.

## Usage

```text
module "network_acl_association" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/network-acl-association?ref=main"

  subnet_id      = module.subnet.subnet_id
  network_acl_id = module.network_acl.network_acl_id
}
```

## Inputs

| Name             | Description                                         | Type     | Default | Required |
| ---------------- | --------------------------------------------------- | -------- | ------- | -------- |
| `subnet_id`      | ID of the subnet to associate with the Network ACL. | `string` | n/a     | yes      |
| `network_acl_id` | ID of the Network ACL to associate with the subnet. | `string` | n/a     | yes      |

## Outputs

| Name                         | Description                        |
| ---------------------------- | ---------------------------------- |
| `network_acl_association_id` | ID of the Network ACL Association. |

## Resources

This module creates:

* `aws_network_acl_association`

## Requirements

* Terraform >= 1.14.0
* AWS provider ~> 6.0

## Notes

A Network ACL is associated with a subnet, not directly with an EC2 instance.

Each subnet can be associated with one Network ACL at a time. If no custom Network ACL is associated, AWS uses the VPC's default Network ACL.

The Network ACL association is separate from the Network ACL itself, which allows the Network ACL resource and its subnet association to be managed independently.

## License

This module is provided as part of a Terraform AWS networking module collection.
