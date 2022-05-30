resource "aws_instance" "initkloud_ec2s" {
  count         = 3
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  tags = {
    "Name"        = "initkloud-application-dev-${ count.index }"
    "Environment" = "development"
    "billing_tag" = "init-billed"
  }
}
