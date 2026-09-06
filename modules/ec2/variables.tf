variable "name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "ami" {
  description = "ID of the AMI to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "Type of instance to launch"
  type        = string

}

variable "subnet_id" {
  description = "ID of the Subnet to attach the instance to"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to associate with the instance"
  type        = list(string)
}

variable "tags" {
  description = "Additional tags for the EC2 instance"
  type        = map(string)
  default     = {}
}
