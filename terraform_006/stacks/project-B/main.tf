provider "aws" {
  region = "eu-west-3" # Paris
}

module "buckets" {
  source = "../../modules/buckets"

  project_name = var.project_name
  bucket_map = var.bucket_map
}