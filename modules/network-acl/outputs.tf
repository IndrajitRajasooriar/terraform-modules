output "network_acl_id" {
  description = "ID of the Network ACL"
  value       = aws_network_acl.this.id
}

output "network_acl_arn" {
  description = "ARN of the Network ACL"
  value       = aws_network_acl.this.arn
}
