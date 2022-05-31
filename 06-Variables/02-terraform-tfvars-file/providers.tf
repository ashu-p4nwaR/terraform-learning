provider "aws" {
  region  = var.deployment_region
  profile = var.iam_profile
}