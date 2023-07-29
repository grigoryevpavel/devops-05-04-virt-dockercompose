provider "yandex" {
    cloud_id = var.cloud_id
    folder_id = var.folder_id
    zone = var.zone
    token = var.token
}

terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
  backend local {
    path = "terraform.tfstate"
  }
  
}

resource "yandex_compute_instance" "node1"{
    name = "node1"
    hostname = "node1"
    description = "node1"
    folder_id = var.folder_id
    zone = var.zone
    platform_id = var.platform_id

    allow_stopping_for_update = true

    resources{
        cores=2
        core_fraction=100
        memory=4
    }

    boot_disk {
        initialize_params{
            image_id = var.image_id
            size = 30
            type = var.disk_type
        }
    }

    network_interface{
        subnet_id = var.subnet_id
        nat = true
    }
}

variable token {
    type = string
    sensitive = true
}
variable folder_id{
    type = string
    sensitive = true
}
variable image_id{
    type = string
}

variable cloud_id{
    type = string
    sensitive = true
}
variable platform_id{
    type = string
}
variable zone {
    type = string
}

variable disk_type{
    type = string
}

variable subnet_id{
    type = string
}

 