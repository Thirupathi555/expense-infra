
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.75.0"
    }
  }

  backend "s3" {
    bucket = "thirupathis-remote-state-bucket-dev"
    key    = "expense-eks"
    region = "us-east-1"
    dynamodb_table = "thirupathis-locking-dev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}