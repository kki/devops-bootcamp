variable "aws_profile" {
  description = "AWS CLI profile name (created in Lecture 4)"
  type        = string
  default     = "YOUR_AWS_PROFILE"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name (AWS Console → EC2 → Key Pairs)"
  type        = string
}
