terraform {
  backend "s3" {
    bucket = "tf-backend-233"
    region = "eu-north-1"
    key = "tf/terraform.tfstate"
    use_lockfile = true
  }
}