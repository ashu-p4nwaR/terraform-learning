# Provider for us-east-1
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Provider for us-west-1
provider "aws" {
  region  = "us-west-1"
  profile = "default"
  alias   = "us-west-1"
}