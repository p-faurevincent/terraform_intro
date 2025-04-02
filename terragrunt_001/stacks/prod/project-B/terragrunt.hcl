include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/s3_buckets"
}

inputs = {

  project_name = "bar"
  bucket_map = {
    blue = {
      category = "video"
    },
    green = {
      category = "pdf"
    },
    yellow = {
      category = "pdf"
    }
  }
}