variable "deployment_region" {
  description = "Region in which AWS infra will be provisioned: "
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  default     = "ami-0022f774911c1d690"
  type        = string
  description = "AMI id which needs to be used to provision infra: "
}


variable "ec2_instance_type" {
  default     = "t2.micro"
  type        = string
  description = "Instance type which needs to be created: "
}

variable "ec2_instance_count" {
  default     = 1
  type        = number
  description = "EC2 instance count: "
}