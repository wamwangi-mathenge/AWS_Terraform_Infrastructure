terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "vpc_infrastructure" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "infra_vpc"
  }
}