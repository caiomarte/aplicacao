terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
  region  = var.region
  profile = "tcc"
}

resource "aws_cloudfront_distribution" "frontend_distribution" {
    origin {
        origin_id = var.origin_id
        domain_name = var.domain_name
        s3_origin_config {
            origin_access_identity = var.origin_access_identity
        }
    }
    default_root_object = var.index_document
    default_cache_behavior {
        allowed_methods = [
            "DELETE",
            "GET",
            "HEAD",
            "OPTIONS",
            "PATCH",
            "POST",
            "PUT"
        ]
        cached_methods = [
            "GET",
            "HEAD"
        ]
        max_ttl = var.max_ttl
        min_ttl = var.min_ttl
        default_ttl = var.default_ttl
        target_origin_id = var.origin_id
        forwarded_values {
          query_string = false
          cookies {
              forward = "none"
          }
        }
        viewer_protocol_policy = var.viewer_protocol_policy
    }
    enabled = true
    restrictions {
        geo_restriction {
            restriction_type = "none"
        }
    }
    viewer_certificate {
        cloudfront_default_certificate = true
    }
}