provider "aws" {
  region = "eu-west-3" # Paris
}

data "aws_iam_user" "user"{
  user_name = "pascal"
}

module "buckets" {
  source = "../../modules/buckets"

  project_name = data.aws_iam_user.user.arn
  bucket_map = {
    blue = {
      creator   = "user-A"
      category  = "video"
    }
    green = {
      creator   = "user-A"
      category  = "pdf"
    }
    yellow = {
      creator   = "user-B"
      category  = "pdf"
    }
  }
}