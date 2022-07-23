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
  profile = var.profile
}

resource "aws_s3_bucket" "frontend_bucket" {
  bucket_prefix = var.bucket_prefix
  acl    = var.bucket_acl
}