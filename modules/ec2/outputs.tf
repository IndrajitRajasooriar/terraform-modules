output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.this.id
}

output "ec2_instance_arn" {
  description = "ARN of the EC2 instance"
  value       = aws_instance.this.arn
}

output "private_ip" {
  description = "Private IP of the instance"
  value = aws_instance.this.private_ip
}
