output "subnet_id" {
  description = "ID of the Subnet"
  value       = aws_subnet.this.id
}

output "subnet_arn" {
  description = "ARN of the Subnet"
  value       = aws_subnet.this.arn
}

output "subnet_cidr_block" {
  description = "CIDR block of the Subnet"
  value       = aws_subnet.this.cidr_block
}