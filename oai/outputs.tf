output "cloudfront_origin_arn" {
    description = "ARN da identidade de acesso da origem do CloudFront."
    value = aws_cloudfront_origin_access_identity.cloudfront_origin.iam_arn
}

output "cloudfront_access_identity_path" {
    description = "Caminho da identidade de acesso da origem do CloudFront."
    value = aws_cloudfront_origin_access_identity.cloudfront_origin.cloudfront_access_identity_path
}