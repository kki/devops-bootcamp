output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.this.public_ip
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.this.id
}

output "security_group_id" {
  description = "ID of the created Security Group"
  value       = aws_security_group.this.id
}
