provider "aws" {
  region = "eu-north-1"
}

resource "aws_vpc" "my-vpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
}

resource "aws_subnet" "my-subnet" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_security_group" "sg-01" {
  vpc_id = aws_vpc.my-vpc.id
}