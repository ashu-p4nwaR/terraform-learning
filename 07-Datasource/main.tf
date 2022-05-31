data "aws_ami" "latest_amz_ami_id" {
  most_recent = true
  owners       = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_instance" "initkloud_ec2" {
  ami               = data.aws_ami.latest_amz_ami_id.id
  instance_type     = "t2.micro"
  key_name          = "terraform-learning"
  availability_zone = "us-east-1a"
  tags = {
    "Name" = "initkloud_ec2"
  }
}