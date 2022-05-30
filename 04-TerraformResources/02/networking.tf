resource "aws_vpc" "initkloud_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "initkloud_vpc"
  }
  enable_dns_hostnames = true
  instance_tenancy     = "default"
}

resource "aws_subnet" "initkloud_public_sn1" {
  vpc_id     = aws_vpc.initkloud_vpc.id
  cidr_block = "10.0.0.0/24"
  tags = {
    "Name" : "initkloud_public_sn"
  }
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "initkloud_igw" {
  vpc_id = aws_vpc.initkloud_vpc.id
  tags = {
    "Name" = "initkloud_igw"
  }
}

resource "aws_route_table" "initkloud_route_public_table" {
  vpc_id = aws_vpc.initkloud_vpc.id
}

resource "aws_route" "initkloud_public_route" {
  route_table_id         = aws_route_table.initkloud_route_public_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.initkloud_igw.id
}


resource "aws_route_table_association" "initkloud_public_route_table_association" {
  route_table_id = aws_route_table.initkloud_route_public_table.id
  subnet_id      = aws_subnet.initkloud_public_sn1.id
}

