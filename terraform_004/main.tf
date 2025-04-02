provider "aws" {
  region = "eu-west-3" # Paris
}

locals {
  tags = {
    Terraform = "true"
    Creator   = var.creator_name
  }
}

resource "aws_s3_bucket" "my_buckets" {
  count = length(var.bucket_list)

  bucket        = format("%s-%s-bucket-for-company", var.creator_name, var.bucket_list[count.index])
  force_destroy = true

  tags = local.tags
}