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

data "aws_iam_policy_document" "frontend_bucket_policy" {
  version = "2012-10-17"
  policy_id = "CloudFrontS3DistributionPolicy"

  statement {
    sid = "AllowGetObject"
    effect = "Allow"
    principals {
      type = "AWS"
      identifiers = [
        var.cloudfront_origin_arn
      ]
    }
    actions = [
      "s3:GetObject"
    ]
    resources = [
      "${var.bucket_arn}/*"
    ]
  }

  statement {
    sid = "AllowListObjects"
    effect = "Allow"
    principals {
      type = "AWS"
      identifiers = [
        var.cloudfront_origin_arn
      ]
    }
    actions = [
      "s3:ListBucket"
    ]
    resources = [
      "${var.bucket_arn}"
    ]
  }
}

resource "aws_s3_bucket_policy" "frontend_bucket_policy" {
  bucket = var.bucket_id
  policy = data.aws_iam_policy_document.frontend_bucket_policy.json
}