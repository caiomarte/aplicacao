module "bucket" {
  source = "./bucket"

  region = var.region
  profile = var.profile

  bucket_prefix = var.application_name

  bucket_acl = "private"
}

module "oai" {
  source = "./oai"

  region = var.region
  profile = var.profile

  bucket_id = module.bucket.frontend_bucket_id
}

module "policy" {
  source = "./policy"

  region    = var.region
  profile   = var.profile

  bucket_id = module.bucket.frontend_bucket_id
  bucket_arn = module.bucket.frontend_bucket_arn
  cloudfront_origin_arn = module.oai.cloudfront_origin_arn
}

module "distribution" {
  source = "./distribution"

  region = var.region
  profile = var.profile

  viewer_protocol_policy = var.viewer_protocol_policy
  index_document = var.index_document
  min_ttl = var.min_cache_duration
  max_ttl = var.max_cache_duration
  default_ttl = var.default_cache_duration

  origin_id = module.bucket.frontend_bucket_id
  domain_name = module.bucket.frontend_bucket_domain_name
  origin_access_identity = module.oai.cloudfront_access_identity_path
}