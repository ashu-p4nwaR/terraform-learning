resource "aws_instance" "initkloud_ec2" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  count         = var.ec2_instance_count
  tags = {
    "Name" = "initkloud_ec2_instance"
  }
  key_name          = "terraform-learning"
  availability_zone = "us-east-1a"
  user_data         = file("./install-apache.sh")
  vpc_security_group_ids = [
    aws_security_group.initkloud_public_ssh_sg.id,
    aws_security_group.initkloud_public_web_sg.id
  ]
}

resource "aws_security_group" "initkloud_public_ssh_sg" {
  name        = "initkloud_public_ssh_sg"
  description = "Security group for HTTPD server for SSH."

  tags = {
    "Name" = "initkloud_public_ssh_sg"
  }

  ingress {
    description = "Allow port 22 for SSH."
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow all IP/PORT for outbound."
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_security_group" "initkloud_public_web_sg" {
  name        = "initkloud_public_sg"
  description = "Security group for HTTPD server for HTTP/s"

  tags = {
    "Name" = "initkloud_public_web_sg"
  }

  ingress {
    description = "Allow port 80 for HTTP."
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow all IP/PORT for outbound."
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Overriding the variable using -var in CLI
# COMMAND
# terraform apply --auto-approve -var="ec2_instance_type=t2.micro" -var="ec2_instance_count=2"