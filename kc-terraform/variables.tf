variable "keycloak_environment" {
  type = object({
    realm = optional(string, "smart")
    custom_audience = optional(string, "fhir-rs")
    base_url = optional(string, "http://localhost:8080")
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
    id              = optional(string, "swiss-app")
    valid_redirects = list(string)
    web_origins     = list(string)
  })
  description = "SMART on FHIR client configuration"
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

variable "keycloak_idp_github" {
  type = object({
    alias         = string
    base_url      = string
    auth_path     = optional(string, "/login/oauth/authorize/")
    token_path    = optional(string, "/login/oauth/access_token")
    userinfo_path = optional(string, "/login/oauth/userinfo")
    client_id     = string
    client_secret = string
  })
  sensitive   = true
  description = "Configuration settings for the GitHub Social Identity Provider"
}
