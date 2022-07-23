variable "region" {
    description = "Região AWS na qual implementar a infraestrutura."
    type = string
}

variable "profile" {
    description = "Perfil de acesso à linha de comando AWS."
    type = string
}


# Bucket
variable "application_name" {
    description = "Nome do bucket S3."
    type = string
}

# Distribution
variable "index_document" {
    description = "Caminho do arquivo principal da distribuição."
    type = string
    default = "index.html"
}

variable "viewer_protocol_policy" {
    description = "Protocolo de visualização da distribuição CloudFront."
    type = string
    default = "allow-all"
}

variable "default_cache_duration" {
    description = "Tempo padrão, em segundos, da duração do cache da distribuição CloudFront."
    type = number
    default = 86400
}

variable "max_cache_duration" {
    description = "Tempo máximo, em segundos, da duração do cache da distribuição CloudFront."
    type = number
    default = 31536000
}

variable "min_cache_duration" {
    description = "Tempo mínimo, em segundos, da duração do cache da distribuição CloudFront."
    type = number
    default = 0
}