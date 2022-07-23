variable "region" {
  description = "Região AWS na qual implementar a infraestrutura."
  type        = string
}

variable "profile" {
  description = "Perfil de acesso à linha de comando AWS."
  type        = string
}

variable "bucket_id" {
  description = "ID do bucket S3 do frontend."
  type        = string
}

variable "bucket_arn" {
  description = "ARN do bucket S3 do frontend."
  type        = string
}

variable "cloudfront_origin_arn" {
  description = "ARN da identidade de acesso da origem do CloudFront."
  type        = string
}