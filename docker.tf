terraform {
    required_providers {
        docker = {
        source  = "kreuzwerker/docker"
        version = "2.23.1"
        }
    }
}

provider "docker" {
    host = "unix:///var/run/docker.sock"
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "web-server"
  ports {
    internal = 80
    external = 8000
  }
  volumes {
    volume_name = "web-server-volume"
    container_path = "/var/www/html"
  }
}