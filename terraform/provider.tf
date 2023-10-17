terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "roboshop-remote-state2"
    key    = "catalogue-dev"
    region = "us-east-1"
    dynamodb_table = "roboshop-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}