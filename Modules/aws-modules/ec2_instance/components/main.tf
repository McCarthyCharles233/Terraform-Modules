provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "ec2-instance" {
    ami = var.ami_value
    instance_type = var.instance_type
}