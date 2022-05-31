variable "amz_ami_id" {
  description = "Amazon Machine Image."
  default     = "ami-0022f774911c1d690"
  type        = string
}

variable "app_name" {
  type        = string
  description = "Application name:"
}

variable "environment_name" {
  type        = string
  description = "Environment name: "
}
