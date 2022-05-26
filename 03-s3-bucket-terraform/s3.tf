terraform {
  required_version = "~>1.1.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.15.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }
  }
}
provider "aws" {
  region  = "us-east-1"
  profile = "terraform-initkloud-dev"

}


resource "random_pet" "petname" {
  length    = 5
  separator = "-"
}

resource "aws_s3_bucket" "initkloud-bucket" {
  bucket = random_pet.petname.id
  acl    = "public-read"
}