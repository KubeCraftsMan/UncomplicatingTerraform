terraform {
  backend "s3" {
    bucket         = "uncomplicating-terraform-tips"
    key            = "backend_class"
    region         = "us-east-1"
    dynamodb_table = "uncomplicating-terraform-2024"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.50"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}