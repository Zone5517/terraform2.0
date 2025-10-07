output "redis_container_id" {
  description = "ID do contêiner Redis criado pelo Terraform"
  value       = docker_container.redis_server.id
}

output "redis_port" {
  description = "Porta externa exposta para o Redis"
  value       = docker_container.redis_server.ports[0].external
}
