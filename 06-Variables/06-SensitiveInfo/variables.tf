variable "db_username" {
  description = "AWS RDS Database Admin username:"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "AWS RDS Database Admin password: "
  type        = string
  sensitive   = true
}