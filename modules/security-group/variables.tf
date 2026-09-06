variable "name" {
  description = "Name of the Security Group"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "description" {
  description = "Description of the Security Group"
  type        = string
}

variable "tags" {
  description = "Additional tags for the Security Group"
  type        = map(string)
  default     = {}
}

variable "ingress" {
  description = "List of ingress rules for the Security Group"

  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = optional(list(string))
    ipv6_cidr_blocks = optional(list(string))
    prefix_list_ids  = optional(list(string))
    security_groups  = optional(list(string))
    self             = optional(bool)
  }))

  default = []
}

variable "egress" {
  description = "List of egress rules for the Security Group"

  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = optional(list(string))
    ipv6_cidr_blocks = optional(list(string))
    prefix_list_ids  = optional(list(string))
    security_groups  = optional(list(string))
    self              = optional(bool)
  }))

  default = []
}