variable "name" {
  description = "Name of the VPC Peering Connection"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}
variable "peer_vpc_id" {
  description = "ID of the peer VPC"
  type        = string
}

variable "auto_accept" {
  description = "Whether to automatically accept the VPC peering connection"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Additional tags for the VPC Peering Connection"
  type        = map(string)
  default     = {}
}
