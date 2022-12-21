variable "environment" {
  type = object({
    name = string
    realm = string
    base_url = string
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

variable "client_smart_app" {
  type = object({
    id              = optional(string, "swissapp")
    valid_redirects = list(string)
    web_origins     = list(string)
  })
  description = "SMART on FHIR client configuration"
}

variable "keycloak_idp_azure_ad" {
  type = object({
    base_url      = string
    auth_path     = optional(string, "/login/oidc/authorize/")
    token_path    = optional(string, "/oauth2/token")
    userinfo_path = optional(string, "/oauth2/userinfo")
    client_id     = string
    client_secret = string
    issuer_path   = optional(string, "/oauth2/")
    jwks_path     = optional(string, "/oauth2/jwk.json")
  })
  sensitive   = true
  description = "The configuration settings for the Azure AD Identity Provider"
}
