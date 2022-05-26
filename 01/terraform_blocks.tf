terraform {
  required_version = "~>1.1.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.15.1"
    }
  }
}

provider "aws" {
  # Staic Credentials
  # access_key = "" ## AWS Access Key
  # secret_key = "" ## AWS Secret Key
  profile = "terraform-initkloud-dev"
  region  = "us-east-1"
}

