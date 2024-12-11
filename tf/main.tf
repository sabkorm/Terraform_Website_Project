module "s3_bucket" {
  source = "./modules/s3_website"
  cloudfront_distribution_arn = module.cloudfront.cloudfront_distribution_arn
}

module "cloudfront" {
  source = "./modules/cloudfront"
  s3_bucket_id = module.s3_bucket.s3_bucket_id
  s3_bucket_domain_name = module.s3_bucket.s3_bucket_bucket_domain_name
}
