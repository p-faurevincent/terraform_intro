variable "bucket_map" {
  description = "Map of bucket to create"
  type = map(object({
    creator   = string
    category  = string
  }))
}