variable "bucket_map" {
  description = "Map of bucket to create"
  type = map(object({
    category  = string
  }))
}

variable "project_name" {
  description = "Name of the project"
  type = string
}

variable "environment" {
  description = "Resources environment"
  type = string
}
variable "owner_name" {
  description = "Resources owner name"
  type = string
}