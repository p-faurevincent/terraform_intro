variable "project_name" {
  description = "Name of the project"
  type = string
}

variable "bucket_map" {
  description = "Map of bucket to create"
  type = map(object({
    creator   = string
    category  = string
  }))
}