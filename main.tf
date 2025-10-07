terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

# -------------------------------
# Contêiner Nginx (exemplo)
# -------------------------------
resource "docker_container" "nginx_server" {
  name  = "aula-terraform-nginx"
  image = "nginx:latest"

  ports {
    internal = 80
    external = 8080
  }
}

# -------------------------------
# Contêiner Redis
# -------------------------------
resource "docker_container" "redis_server" {
  name  = var.redis_container_name
  image = "redis:alpine"

  ports {
    internal = 6379
    external = var.redis_external_port
  }
}
