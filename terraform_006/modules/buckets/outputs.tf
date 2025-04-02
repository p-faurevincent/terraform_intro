output "bucket_arns" {
  description = "Liste of ARNs of all buckets created"
  value = {
    for k, bucket in aws_s3_bucket.my_buckets :
    k => bucket.arn
  }
}