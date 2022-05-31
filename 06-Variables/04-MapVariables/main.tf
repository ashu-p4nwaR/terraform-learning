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
  region  = var.deployment_region
  profile = var.iam_deployment_profile
}

resource "aws_instance" "initkloud_ec2" {
  ami           = ""
  instance_type = var.instance_type[var.deployment_env]
  tags = {
    "Name" : "initkloud_ec2"
    "Environment" : var.deployment_env
  }
  key_name          = ""
  availability_zone = "${var.deployment_region}a"
}