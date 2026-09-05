variable "name" {
  description = "Name of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block of the VPC"
  type        = string
}

variable "enable_dns_support" {
  description = "Enable DNS resolution inside the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames inside the VPC"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}