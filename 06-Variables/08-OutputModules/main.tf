resource "aws_instance" "initkloud_ec2" {
  ami               = "ami-0022f774911c1d690"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  tags = {
    "Name" : "initkloud_ec2"
  }
  key_name = "terraform-learning"

  user_data = file("./install-apache.sh")

}