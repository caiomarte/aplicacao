terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region  = var.region
  profile = var.profile
}

resource "aws_cloudfront_origin_access_identity" "cloudfront_origin" {
  comment = "${var.bucket_id}-OAI"
}