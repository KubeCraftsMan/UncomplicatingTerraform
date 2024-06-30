terraform {
  backend "s3" {
    bucket = "uncomplicating-terraform-tips"
    key    = "mv_state_module_class"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.50"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}