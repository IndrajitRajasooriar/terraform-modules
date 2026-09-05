variable "availability_zone" {
  description = "Availability Zone for the Subnet"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block of the Subnet"
  type        = string
}

variable "name" {
  description = "Name of the Subnet"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "tags" {
  description = "Additional tags for the Subnets"
  type        = map(string)
  default     = {}
}