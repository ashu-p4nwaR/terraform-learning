variable "deployment_region" {
  default     = "us-east-1"
  description = "Deployment region."
  type        = string
}

variable "ec2_instance_type" {
  default     = ["t2.micro", "t2.mini", "t2.large"]
  description = "EC2 Instance Type"
  type        = list(string)
}

