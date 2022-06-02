resource "aws_instance" "initkloud_ec2_instance01" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.small"
  tags = {
    "Name" : "initkloud_ec2_state_example"
  }
  key_name          = "terraform-learning"
  availability_zone = "us-east-1a"
}