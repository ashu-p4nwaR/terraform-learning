resource "aws_instance" "initkloud_ec2_statecommand01" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.small"
  tags = {
    "Name" : "initkloud_ec2_state_example01"
  }
  key_name          = "terraform-learning"
  availability_zone = "us-east-1a"
}

resource "aws_instance" "initkloud_ec2_statecommand02" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.small"
  tags = {
    "Name" : "initkloud_ec2_state_example02"
  }
  key_name          = "terraform-learning"
  availability_zone = "us-east-1a"
}