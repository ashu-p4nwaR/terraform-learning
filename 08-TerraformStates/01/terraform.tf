terraform {
  required_version = "~> 1.1.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.1"
    }
  }
  backend "s3" {
    bucket = "initkloud-terraform-state-bucket"
    key    = "development/terraform.tfstate"
    region = "us-east-1"
    profile = "terraform-initkloud-dev"
    dynamodb_table = "initkloud-terraform-state-bucket"

  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "terraform-initkloud-dev"
}
