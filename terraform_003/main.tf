provider "aws" {
  region = "eu-west-3" # Paris
}

locals {
  tags = {
    Terraform = "true"
    Creator   = var.creator_name
  }
}

resource "aws_s3_bucket" "my_first_bucket" {
  bucket        = format("%s-first-bucket-for-company", var.creator_name)
  force_destroy = true

  tags = local.tags
}

resource "aws_s3_bucket" "my_second_bucket" {
  bucket        = format("%s-second-bucket-for-company", var.creator_name)
  force_destroy = true

  tags = local.tags
}