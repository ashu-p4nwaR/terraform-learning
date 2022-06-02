terraform {
  required_version = "~> 1.1.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.1"
    }
  }

  backend "s3" {
    bucket         = "initkloud-terraform-state-bucket"
    region         = "us-east-1"
    key            = "statecommand/terraform.tfstate"
    dynamodb_table = "initkloud-terraform-state-db"
    profile        = "terraform-initkloud-dev"
  }
}

provider "aws" {
  profile = "terraform-initkloud-dev"
  region  = "us-east-1"
}
