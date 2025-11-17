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


resource "aws_instance" "example" {
  ami                    = "ami-03695d52f0d883f65"
  instance_type          = "t3.micro"
  key_name               = "LinuxKP"
  tags = {
    Name = "TerraServer"
  }
}