# CREATE BEFORE DESTROY - prevent destroy before creating
resource "aws_instance" "initkloud_ec2_01" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  tags = {
    "Name" = "initkloud_ec2_01"
  }
  key_name          = "terraform-learning"
  availability_zone = "us-east-1a"
  # availability_zone = "us-east-1b"
  lifecycle {
    create_before_create = true
  }
}

# PREVENT DESTROY - prevent destruction of resources
resource "aws_instance" "initkloud_ec2_02" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  tags = {
    "Name" = "initkloud_ec2_02"
  }
  key_name          = "terraform-learning"
  availability_zone = "us-east-1a"
  # availability_zone = "us-east-1b"
  lifecycle {
    prevent_destroy = true
  }
}

# IGNORE CHANGES - ignore all the changes for arguments mentioned in lifecycle
resource "aws_instance" "initkloud_ec2_03" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  tags = {
    "Name" = "initkloud_ec2_03"
  }
  key_name          = "terraform-learning"
  availability_zone = "us-east-1a"
  # availability_zone = "us-east-1b"
  lifecycle {
    ignore_changes = [
      tags, # We can also use "all" to ignore prevent changes to attributes
    ]
  }
}


# COMMAND
# terraform fmt
# terraform validate && terraform plan
# terraform apply --auto-approve