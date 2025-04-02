locals {
  tags = {
    Terraform = "true"
    Project = var.project_name
  }
}

resource "aws_s3_bucket" "my_buckets" {
  for_each = var.bucket_map

  bucket        = format("%s-%s-bucket-for-company", each.value.creator, each.key)
  force_destroy = true

  tags = merge(
    local.tags,
    {
      Creator   = each.value.creator
      Category  = each.value.category
    }
  )

}
