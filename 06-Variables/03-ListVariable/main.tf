resource "aws_instance" "initkloud_ec2" {
  ami           = "ami-0022f774911c1d690"
  instance_type = var.ec2_instance_type[0]
  key_name      = "terraform-initkloud-dev"
  tags = {
    "Name" = "initkloud_ec2"
  }
  availability_zone = "us-east-1a"
}