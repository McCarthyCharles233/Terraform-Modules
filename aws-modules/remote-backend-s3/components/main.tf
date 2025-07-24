provider "aws" {
  region = "eu-north-1"
}

resource "aws_s3_bucket" "my-s3-bucket" {
  bucket = "tf-backend-233"
}