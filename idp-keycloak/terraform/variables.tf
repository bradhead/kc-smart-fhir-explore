variable "keycloak_environment" {
  type = object({
    realm = optional(string, "provider-idp")
    custom_audience = optional(string, "health")
    base_url = optional(string, "http://localhost:8088")
  })
  description = "Keycloak configuration environment"
}

variable "keycloak_terraform_client" {
  type = object({
    id     = string
    secret = string
  })
  sensitive   = true
  description = "The keycloak client and secret used by Terraform to create resources"
}

variable "client_phsa_as" {
  type = object({
    id              = optional(string, "phsa-as")
    valid_redirects = list(string)
    web_origins     = list(string)
  })
  description = "PHSA Authorization Server"
}

variable "keycloak_idp_azure_ad" {
  type = object({
    alias         = string
    base_url      = string
    auth_path     = optional(string, "/oauth2/v2.0/authorize/")
    token_path    = optional(string, "/oauth2/v2.0/token")
    userinfo_path = optional(string, "/oauth2/userinfo")
    client_id     = string
    client_secret = string
    issuer_path   = optional(string, "/v2.0")
    jwks_path     = optional(string, "/discovery/v2.0/keys/")
  })
  sensitive   = true
  description = "Configuration settings for the Azure AD Identity Provider"
}

