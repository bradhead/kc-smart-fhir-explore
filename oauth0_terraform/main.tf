terraform {
  required_providers {
    auth0 = {
      source = "auth0/auth0"
      version = "0.42.0"
    }
  }
}

provider "auth0" {
  # Configuration options
  client_id     = var.auth0_terraform_client.id
  client_secret = var.auth0_terraform_client.secret
  url           = var.auth0_environment.base_url
  domain         = var.auth0_environment.domain
  audience = var.auth0_environment.audience
  debug = true
}