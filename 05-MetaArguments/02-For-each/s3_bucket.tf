resource "aws_s3_bucket" "initkloud_s3_buckets" {
  for_each = {
    dev  = "initkloud-bucket"
    prod = "initkloud-bucket"
  }
  bucket = "${each.key}-${each.value}"
  acl    = "private"

  tags = {
    "Environment"   = each.key
    "BucketPostfix" = each.value
  }
}