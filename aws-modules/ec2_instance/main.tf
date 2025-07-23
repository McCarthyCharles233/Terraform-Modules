provider "aws" {
    region = "eu-north-1" # choose desired region
}

module "simple-ec2-instance-module" {
    source = "./components"
    ami_value  = "ami-012345asdf00" # choose an ami within the region set above
    instance_type = "t3.micro"
}