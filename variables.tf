variable "aws_region" {
  description = "AWS region to deploy EC2 instance"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro" # Free tier eligible
}

variable "key_name" {
  description = "Name of your existing AWS key pair"
  type        = string
  default     = "docker_setup_2025" # Replace with your key pair name or leave empty
}
