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

resource "aws_instance" "web" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}