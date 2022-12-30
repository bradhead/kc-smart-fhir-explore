terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.24.0"
    }
  }
}

provider "docker" {
    host = "tcp://localhost:2376"
}

resource "docker_container" "hapi-fhir" {
    image = "${docker_image.hapi_image.latest}"
    name = "hapi-phir"
}

resource "docker_image" "hapi_image" {
    name = "hapiproject/hapi:latest"
}