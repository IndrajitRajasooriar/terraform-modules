output "route_table_id" {
  description = "ID of the Route Table"
  value       = aws_route_table.this.id
}

output "route_table_arn" {
  description = "ARN of the Route Table"
  value       = aws_route_table.this.arn
}

output "route_table_cidr_block" {
  description = "CIDR block of the Route Table"
  value       = aws_route_table.this.cidr_block
}