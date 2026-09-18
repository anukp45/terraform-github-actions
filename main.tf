terraform {
  required_version = ">= 1.6.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "example" {
  filename = "${path.module}/example.txt"

  content = <<-EOT
    Hello from Terraform!

    This file was created using Terraform.
    Project: Terraform GitHub Actions
    Environment: Development
  EOT
}