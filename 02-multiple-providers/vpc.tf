resource {
  cidr_block = "10.0.0.0/16"
  provider   = aws.aws-west-1
  tags = {
    "Name" : "initkloud_vpc_uswest1"
  }
}