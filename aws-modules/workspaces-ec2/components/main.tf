provider "aws" {
  region = "eu-north-1"
}

variable "ami" {
  
}

variable "instance_type" {
  
}

resource "aws_instance" "example" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "ec2-${terraform.workspace}"
  }
}