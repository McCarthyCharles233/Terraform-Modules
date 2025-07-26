provider "aws" {
  region = "eu-north-1"
}

variable "ami" {
  
}

variable "instance_type" {
    type = map(string)

    default = {
      "dev" = "t3.micro",
      "stage" = "t3.micro"
      "prod" = "t3.micro"
    }

    # In a practical project and for better demosntration, different instance types will be used
    # Used the same instace types to stay in the free tier 
  
}


module "workspace-ec2" {
  source = "./components"
  ami = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace)
}