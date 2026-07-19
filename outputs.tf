# Output the public IP of the EC2 instance
output "public_ip" {
  description = "The public IP of the EC2 instance"
  value = aws_instance.ec2_instance.public_ip
}

# Output the public DNS of the EC2 instance
output "public_dns" {
  description = "The public DNS of the EC2 instance"
  value = aws_instance.ec2_instance.public_dns
}

# Output the instance ID of the EC2 instance
output "instance_id" {
  description = "The instance ID of the EC2 instance"
  value = aws_instance.ec2_instance.id
}

# Output website URL
output "website_url" {
  description = "The website URL of the EC2 instance"
  value = "http://${aws_instance.ec2_instance.public_ip}"
}
