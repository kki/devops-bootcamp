variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "name_tag" {
  description = "Value for the Name tag (also used as Security Group name prefix)"
  type        = string
  default     = "lecture8-server"
}
