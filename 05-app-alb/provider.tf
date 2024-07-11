terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket         = "roboshoppro"
    key            = "app-alb"
    region         = "us-east-1"
    # dynamodb_table = "daws76s-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}