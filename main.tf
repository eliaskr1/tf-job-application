terraform {
  required_providers {
    playgroundtech = {
      source  = "playgroundtech/playgroundtech"
      version = "~> 0.0.3"
    }
  }
}

provider "playgroundtech" {
  email        = var.email
  password     = var.password
}

resource "playgroundtech_application" "elias_kroon" {
  email        = var.email
  phone_number = var.phone_number
  linkedin     = var.linkedin
  github       = var.github
  homepage     = var.homepage
}

resource "null_resource" "provision" {
  provisioner "local-exec" {
    command = "echo 'Provisioning Elias... Please stand by...'"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "echo 'Deprovisioning Elias... Hopefully not necessary!'"
  }
}