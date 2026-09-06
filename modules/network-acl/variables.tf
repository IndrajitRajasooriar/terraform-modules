variable "name" {
  description = "Name of the Network ACL"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "tags" {
  description = "Additional tags for the Network ACL"
  type        = map(string)
  default     = {}
}

variable "egress" {
  description = "List of egress rules for the Network ACL"
  type = list(object({
    cidr_block = string
    rule_no    = number
    protocol   = optional(string)
    action     = optional(string)
    from_port  = optional(number)
    to_port    = optional(number)
  }))
  default = []
}

variable "ingress" {
  description = "List of ingress rules for the Network ACL"
  type = list(object({
    cidr_block = string
    rule_no    = number
    protocol   = optional(string)
    action     = optional(string)
    from_port  = optional(number)
    to_port    = optional(number)
  }))
  default = []
}