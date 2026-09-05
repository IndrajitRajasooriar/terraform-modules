variable "name" {
  description = "Name of the Route Table"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "tags" {
  description = "Additional tags for the Route Tables"
  type        = map(string)
  default     = {}
}

variable "routes" {
  description = "List of routes to be added to the Route Table"
  type = list(object({
    cidr_block                = string
    ipv6_cidr_block           = optional(string)
    egress_only_gateway_id    = optional(string)
    gateway_id                = optional(string)
    instance_id               = optional(string)
    nat_gateway_id            = optional(string)
    network_interface_id      = optional(string)
    transit_gateway_id        = optional(string)
    vpc_peering_connection_id = optional(string)
  }))
  default = []
}