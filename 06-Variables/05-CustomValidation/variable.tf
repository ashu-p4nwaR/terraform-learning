variable "image_id" {
  description = "Amazon Machine Image ID."
  type        = string
  default     = "ami-0022f774911c1d690"
  validation {
    condition     = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}