variable "vpc_id" {
  description = "The ID of the VPC in which to create the endpoint"
  type        = string
}

variable "service_name" {
  description = "The name of the service to which to connect"
  type        = string
}

variable "vpc_endpoint_type" {
  description = "The type of VPC endpoint. Valid values are Interface and Gateway"
  type        = string
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the endpoint network interface"
  type        = list(string)
  default     = []
}

variable "subnet_ids" {
  description = "A list of subnet IDs in which to create the endpoint network interface"
  type        = list(string)
  default     = []
}

variable "private_dns_enabled" {
  description = "Indicates whether to associate a private hosted zone with the specified VPC"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of the VPC Endpoint"
  type        = string
}

variable "tags" {
  description = "Additional tags for the VPC Endpoint"
  type        = map(string)
  default     = {}
}