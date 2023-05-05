terraform {
  required_providers {
    keycloak = {
      source  = "mrparkers/keycloak"
      version = ">= 4.2.0"
    }
  }
}

provider "keycloak" {
  client_id     = var.keycloak_terraform_client.id
  client_secret = var.keycloak_terraform_client.secret
  url           = var.keycloak_environment.base_url
  realm         = var.keycloak_environment.realm
}
