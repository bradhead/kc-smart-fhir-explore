variable "keycloak_environment" {
  type = object({
    realm              = optional(string, "lra")
    realm_display_name = optional(string, "Smart on FHIR Realm")
    custom_audience    = optional(string, "fhir-rs")
    base_url           = optional(string, "http://localhost:8080")
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

variable "client_app1" {
  type = object({
    id              = optional(string, "swiss-app")
    valid_redirects = list(string)
    web_origins     = list(string)
    base_url        = string
  })
  description = "SMART on FHIR client configuration"
}

variable "client_app2" {
  type = object({
    id              = optional(string, "swiss-app2")
    valid_redirects = list(string)
    web_origins     = list(string)
  })
  description = "SMART on FHIR client configuration"
}

variable "smile-client" {
  type = object({
    id              = optional(string, "smile-cdr")
    valid_redirects = list(string)
    web_origins     = list(string)
  })
  description = "SMILE CDR client configuration"
}


variable "keycloak_idp_bcsc" {
  type = object({
    alias         = string
    base_url      = string
    auth_path     = optional(string, "/login/oidc/authorize/")
    token_path    = optional(string, "/oauth2/token")
    userinfo_path = optional(string, "/oauth2/userinfo")
    client_id     = string
    client_secret = string
    issuer_path   = optional(string, "/oauth2")
    jwks_path     = optional(string, "/oauth2/jwk")
  })
  sensitive   = true
  description = "Configuration settings for the Azure AD Identity Provider"
}


variable "keycloak_idp_zed_azure_ad" {
  type = object({
    alias         = optional(string, "zedwerks-aad-idp")
    auth_url      = string
    token_url     = string
    userinfo_url  = string
    client_id     = string
    client_secret = string
    issuer_url    = string
    jwks_url      = string
    logout_url    = string
    issuer_url    = string
  })
  sensitive   = true
  description = "Configuration settings for the Azure AD Identity Provider"
}

variable "keycloak_idp_phsa_azure_ad" {
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

variable "keycloak_idp_bcp_azure_ad" {
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
