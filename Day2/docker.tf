terraform {
	required_providers {
		docker = {
		source = "kreuzwerker/docker"
		version = "~> 2.21.0"
		}
	}
}


provider "docker" {}

resource "docker_image" "img" {
        name = "nginx:latest"
        keep_locally = false
}

resource "docker_container" "ctr" {
        image = docker_image.img.name
	name = "nginx-tf"

	ports {
		internal = 80
		external = 80
	}
}
