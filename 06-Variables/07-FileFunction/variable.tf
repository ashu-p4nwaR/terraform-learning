variable "amz_ami_id" {
  default     = "ami-0022f774911c1d690"
  description = "Amazon Machine Image:"
  type        = string
}

variable "amz_instance_type" {
  default     = "t2.micro"
  description = "EC2 instance type:"
}
