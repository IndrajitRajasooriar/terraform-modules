variable "subnet_id" {
  description = "ID of the subnet to associate with the Network ACL."
  type        = string
}

variable "network_acl_id" {
  description = "ID of the Network ACL to associate with the subnet."
  type        = string
}