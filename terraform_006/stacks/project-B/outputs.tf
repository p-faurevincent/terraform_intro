output "bucket_arns" {
  description = "Liste of ARNs of all buckets created"
  value = module.buckets.bucket_arns
}