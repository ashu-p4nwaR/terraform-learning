resource "aws_instance" "initkloud_ec2" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  tags = {
    "Name" : "initkloud_ec2"
    "Environment" : "development"
  }


  availability_zone      = "us-east-1a"
  key_name               = "terraform-learning"
  subnet_id              = aws_subnet.initkloud_public_sn1.id
  vpc_security_group_ids = [aws_security_group.initkloud_sg01.id]
  user_data              = file("./apache-install.sh")
}


# Elastic IP
resource "aws_eip" "initkloud_elastic_ip" {
  instance   = aws_instance.initkloud_ec2.id
  vpc        = true
  depends_on = [aws_internet_gateway.initkloud_igw]
}