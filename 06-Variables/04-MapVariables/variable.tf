variable "deployment_region" {
  description = "Deployment region."
  default     = "us-east-1"
  type        = string
}

variable "iam_deployment_profile" {
  description = "IAM profile for deployment"
  default     = "terraform-initkloud-dev"
  type        = string
}

variable "deployment_env" {
  description = "Deployment Environment."
  default     = "dev"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  default = {
    "dev" : "t2.micro"
    "prod" : "t2.large"
    "test" : "t2.mini"
  }
  type = map(string)
}

