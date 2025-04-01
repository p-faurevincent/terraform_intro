provider "aws" {
  region = "eu-west-3" # Paris
}

resource "aws_s3_bucket" "my_first_bucket" {
  bucket        = "my-first-bucket-for-uggy"
  force_destroy = true

  tags = {
    Terraform = "true"
    Creator   = "me"
  }
}