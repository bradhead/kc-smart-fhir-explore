variable "auth0_environment" {
  type = object({
    domain   = optional(string, "smart-auth0.com")
    audience = optional(string, "fhir-rs")
  })
  description = "Keycloak configuration environment"
}

variable "auth0_client_smart_app" {
  type = object({
    name            = optional(string, "swiss-app")
    callbacks       = list(string)
    web_origins     = list(string)
    allowed_origins = list(string)
    web_origins     = list(string)
  })
  description = "SMART on FHIR client configuration"
}

variable "auth0_idp_azure_ad" {
  type = object({
    name         = string
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

variable "auth0_idp_github" {
  type = object({
    name         = string
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
