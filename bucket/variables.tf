variable "region" {
    description = "Região AWS na qual implementar a infraestrutura."
    type = string
}

variable "profile" {
    description = "Perfil de acesso à linha de comando AWS."
    type = string
}

variable "bucket_prefix" {
    description = "Nome do bucket S3."
    type = string
}

variable "bucket_acl" {
    description = "Nível de controle de acesso do bucket S3."
    type = string
    default = "private"
}