variable "region" {
    description = "Região AWS na qual implementar a infraestrutura."
    type = string
}

variable "profile" {
    description = "Perfil de acesso à linha de comando AWS."
    type = string
}

variable "origin_id" {
    description = "ID da origem da distribuição CloudFront."
    type = string
}

variable "domain_name" {
    description = "Domínio da origem da distribuição CloudFront."
    type = string
}

variable "origin_access_identity" {
    description = "Identidade de acesso da origem da distribuição CloudFront."
    type = string
}

variable "viewer_protocol_policy" {
    description = "Protocolo de visualização da distribuição CloudFront."
    type = string
}

variable "index_document" {
    description = "Caminho do arquivo principal da distribuição CloudFront."
    type = string
}

variable "default_ttl" {
    description = "Tempo padrão, em segundos, da duração do cache da distribuição CloudFront."
    type = number
}

variable "max_ttl" {
    description = "Tempo máximo, em segundos, da duração do cache da distribuição CloudFront."
    type = number
}

variable "min_ttl" {
    description = "Tempo mínimo, em segundos, da duração do cache da distribuição CloudFront."
    type = number
}