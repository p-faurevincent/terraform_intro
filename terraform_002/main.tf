provider "aws" {
  region = "eu-west-3" # Paris
}

locals {
  tags = {
    Terraform = "true"
    Creator   = "me"
  }
}

resource "aws_s3_bucket" "my_first_bucket" {
  bucket        = "my-first-bucket-for-company"
  force_destroy = true

  tags = local.tags
}

resource "aws_s3_bucket" "my_second_bucket" {
  bucket        = "my-second-bucket-for-company"
  force_destroy = true

  tags = local.tags
}