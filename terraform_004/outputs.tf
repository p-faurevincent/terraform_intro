output "first_bucket_arn" {
  value = aws_s3_bucket.my_buckets[0].arn
}