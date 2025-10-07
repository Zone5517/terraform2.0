variable "redis_container_name" {
  description = "Nome do contêiner Redis"
  type        = string
  default     = "aula-terraform-redis"
}

variable "redis_external_port" {
  description = "Porta externa para o Redis"
  type        = number
  default     = 6379
}
