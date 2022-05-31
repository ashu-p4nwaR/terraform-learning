locals {
  bucket-name = "${var.app_name}-${var.environment_name}-bucket"
}

resource "aws_s3_bucket" "initkloud_s3_bucket" {
  #   bucket = "${var.app_name}-${var.environment_name}-bucket"
  bucket = local.bucket-name
  tags = {
    # "Name"        = "${var.app_name}-${var.environment_name}-bucket"
    "Name"        = local.bucket-name
    "Environment" = var.environment_name
  }
}

resource "aws_s3_bucket_acl" "initkloud_s3_acl" {
  bucket = aws_s3_bucket.initkloud_s3_bucket.id
  acl    = "private"
}

# Define local values 

