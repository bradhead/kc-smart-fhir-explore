resource "auth0_oidc_identity_provider" "azure_ad" {
  domain                 = var.auth0_environment.domain
  alias                 = var.auth0_idp_azure_ad.alias
  display_name          = "Azure AD"
  enabled               = true
  store_token           = false
  trust_email           = true
  hide_on_login_page    = false
  sync_mode             = "FORCE"
  authorization_url     = "${var.auth0_idp_azure_ad.base_url}${var.auth0_idp_azure_ad.auth_path}"
  token_url             = "${var.auth0_idp_azure_ad.base_url}${var.auth0_idp_azure_ad.token_path}"
  backchannel_supported = false
  client_id             = var.auth0_idp_azure_ad.client_id
  client_secret         = var.auth0_idp_azure_ad.client_secret
  default_scopes        = "openid profile email"
  validate_signature    = true
  jwks_url              = "${var.auth0_idp_azure_ad.base_url}${var.auth0_idp_azure_ad.jwks_path}"
  extra_config = {
    "clientAuthMethod" = "client_secret_post"
    "prompt"           = "login"
  }
}