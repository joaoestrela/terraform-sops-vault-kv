terraform {
  required_version = ">= 1.0.0"

  required_providers {
    sops = {
      source  = "carlpett/sops"
      version = "~> 0.6.2"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "~> 2.20.0"
    }
  }
}