provider "aws" {
  region = "eu-north-1"
}

module "vpc-module" {
  source = "./components"
}