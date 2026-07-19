variable "aws_region" {
  description = "AWS region where all resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Short name used as a prefix/tag on resources"
  type        = string
  default     = "hug-terraform-challenge"
}

variable "full_name" {
  description = "Name shown on the Nginx landing page"
  type        = string
  default     = "Dr. Oluwabamise Omolaso"
}

variable "key_name" {
  description = "Name of the SSH key to use for the EC2 instance"
  type        = string
  default     = "terraform-key"
}
