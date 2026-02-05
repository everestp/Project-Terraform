provider "aws" {
  region = "us-east-1"
}

# Create VPC
resource "aws_vpc" "main" {
cidr_block = var.vpc_cidr
tags = {
Name = var.vpc_name
}
}
