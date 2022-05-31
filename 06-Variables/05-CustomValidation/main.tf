resource "aws_instance" "initkloud_ec2" {
  ami           = var.image_id
  instance_type = "t2.micro"
  tags = {
    "Name" : "initkloud_ec2"
    "BillingID" : "2022"
  }
  availability_zone = "us-east-1a"
}