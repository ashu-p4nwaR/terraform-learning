resource "aws_instance" "initkloud_ec2_instance" {
  ami           = var.ec2_image_id
  instance_type = var.ec2_instance_type
  key_name      = "terraform-initkloud-dev"
  tags = {
    "Name" = "initkloud_ec2_instance"
  }
  availability_zone = var.deployment_region_az
}