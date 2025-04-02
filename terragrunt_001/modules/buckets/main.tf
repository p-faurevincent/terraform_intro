locals {
  tags = {
    Terraform = "true"
    Project = var.project_name
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "my_buckets" {
  for_each = var.bucket_map

  bucket        = format("%s-bucket-for-company", each.key)
  force_destroy = true

  tags = merge(
    local.tags,
    {
      Owner   = var.owner_name
      Category  = each.value.category
    }
  )

}
