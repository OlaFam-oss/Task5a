variable "ec2_ami" {
  description = "This is variable to manage ec2 AMI"
  type        = string
  default     = "ami-04f7efe62f419d9f5"
}

variable "ec2_instance_type" {
  description = "This is a variable to manage instance type"
  type        = string
  default     = "t2.micro"
}

