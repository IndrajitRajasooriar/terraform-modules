output "id" {
  description = "ID of the VPC Peering Connection"
  value       = aws_vpc_peering_connection.this.id
}

output "status" {
  description = "Status of the VPC Peering Connection"
  value       = aws_vpc_peering_connection.this.accept_status
}