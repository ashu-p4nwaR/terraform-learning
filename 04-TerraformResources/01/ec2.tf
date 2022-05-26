terraform {
  required_version = "~> 1.1.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.1"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "terraform-initkloud-dev"
}

resource "aws_instance" "initkloud_ec2" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  tags = {
    "Name" : "initKloud-app"
  }
  availability_zone = "us-east-1a"

}