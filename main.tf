terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "lb" {
  name = "kay"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}