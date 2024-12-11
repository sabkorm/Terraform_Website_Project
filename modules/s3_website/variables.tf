variable "s3_bucket_name" {
  type        = string
  description = "the name of the bucket"
  default     = "sab-test-snirfiles"
}

variable "s3_bucket_website_index_document" {
  type        = string
  description = "the default file for the static website"
  default     = "index.html"
}

variable "cloudfront_distribution_arn" {
  type = string
}