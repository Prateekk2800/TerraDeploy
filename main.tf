terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

#Creating VPC

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/25"
  tags = {
    Name = "myvpc"
  }
}
