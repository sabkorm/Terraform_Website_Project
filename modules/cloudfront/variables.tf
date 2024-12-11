
variable "aws_cloudfront_origin_access_control_name" {
  type        = string
  description = "the name of aws cloudfront origin access control"
  default     = "site_access2"
}

variable "aws_cloudfront_distribution_acm_certificate_arn" {
  type        = string
  description = "acm certificate arn"
  default     = "arn:aws:cloudfront::471112654829:distribution/E3HPPVA653IW2G"
}

variable "s3_bucket_website_index_document" {
  type        = string
  description = "the default file for the static website"
  default     = "index.html"
}

variable "s3_bucket_id" {
  type = string
}

variable "s3_bucket_domain_name" {
  type = string
}