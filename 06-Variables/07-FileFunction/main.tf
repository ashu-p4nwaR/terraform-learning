resource "aws_instance" "initkloud_ec2" {
  ami          = var.amz_ami_id
  instance_type = var.amz_instance_type
  tags = {
    "Name" = "initkloud_ec2"
  }
  key_name          = "terraform-learning"
  availability_zone = "us-east-1a"
  user_data         = file("./install-apache.sh")
}