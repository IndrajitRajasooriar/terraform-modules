output "vpc_endpoint_id" {
  description = "ID of the VPC Endpoint"
  value       = aws_vpc_endpoint.this.id
}

output "vpc_endpoint_arn" {
  description = "ARN of the VPC Endpoint"
  value       = aws_vpc_endpoint.this.arn
}