variable "creator_name" {
  description = "Name of the Creator"
  type = string
}

variable "bucket_list" {
  description = "List of bucket to create"
  type = list(string)
}