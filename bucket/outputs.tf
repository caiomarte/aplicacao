output "frontend_bucket_id" {
    description = "ID do bucket S3."
    value = aws_s3_bucket.frontend_bucket.id
}

output "frontend_bucket_arn" {
    description = "ARN do bucket S3."
    value = aws_s3_bucket.frontend_bucket.arn
}

output "frontend_bucket_domain_name" {
    description = "Domínio do bucket S3."
    value = aws_s3_bucket.frontend_bucket.bucket_domain_name
}