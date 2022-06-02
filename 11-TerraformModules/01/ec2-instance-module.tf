# AWS EC2 Instance Module
module "ec2_cluster" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name           = "my-modules-demo"
  instance_count = 2

  ami                   = data.aws_ami.amzlinux.id
  instance_type         = "t2.micro"
  key_name              = "terraform-key"
  monitoring            = true
  vpc_security_group_id = [""]
  subnet_id             = "subnet-fr43432"

  tags = {
    Name        = "Modules-demo"
    Terraform   = "true"
    Environment = "Dev"
  }

}