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
    command = <<EOT
    echo "   (•_•)"
    echo "  <)   )╯ Provisioning Elias..."
    echo "  /    \\"
    EOT
  }

  provisioner "local-exec" {
    when    = destroy
    command = <<EOT
      echo "   (╥_╥)"
      echo "  <)   )╯ Deprovisioning Elias..."
      echo "  /    \\"
      echo "Elias has left the infrastructure."
      EOT
  }
}