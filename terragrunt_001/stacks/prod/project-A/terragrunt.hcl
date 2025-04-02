include "env" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/buckets"
}

inputs = {
  project_name = "foo"
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