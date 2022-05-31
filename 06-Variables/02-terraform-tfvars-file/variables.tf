variable "deployment_region" {
  default     = "us-east-1"
  description = "Deployment region."
  type        = string
}

variable "iam_profile" {
  default     = "terraform-initkloud-dev"
  type        = string
  description = "Deployment IAM profile."
}


variable "ec2_image_id" {
  default     = "ami-0022f774911c1d690"
  type        = string
  description = "EC2 Image Id."
}

variable "ec2_instance_type" {
  default     = "t3.micro"
  type        = string
  description = "EC2 Instance Type."
}


variable "deployment_region_az" {
  default     = "us-east-1a"
  type        = string
  description = "EC2 Instance AZ."
}