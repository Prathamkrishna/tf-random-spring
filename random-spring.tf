resource "docker_container" "spring-test" {
    name = var.container_name
    image = "spring-test:latest"
    ports {
      internal = "8080"
      external = "8081"
    }
}

variable "container_name" {
    description = "container name for spring test"
    default = "spring_container"
    type = string
}

# resource "docker_image" "nginx_image" {
#     name = "nginx"
# }