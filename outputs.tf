output "backend_public_ip" {
  description = "Public IP of backend EC2 instance"
  value       = aws_instance.backend.public_ip
}

output "backend_instance_id" {
  description = "ID of backend EC2 instance"
  value       = aws_instance.backend.id
}

output "s3_bucket_name" {
  description = "Name of S3 bucket"
  value       = aws_s3_bucket.frontend.id
}

output "s3_website_endpoint" {
  description = "S3 website endpoint"
  value       = aws_s3_bucket_website_configuration.frontend.website_endpoint
}

output "security_group_id" {
  description = "ID of security group"
  value       = aws_security_group.web_server.id
}

output "ssh_command" {
  description = "Command to SSH into instance"
  value       = "ssh -i your-key.pem ubuntu@${aws_instance.backend.public_ip}"
}
