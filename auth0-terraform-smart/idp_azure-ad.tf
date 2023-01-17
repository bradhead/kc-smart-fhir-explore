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

resource "auth0_connection" "azure_ad" {
  name = "Azure-AD"
  is_domain_connection = true
  strategy = "oidc"
  show_as_button = true
  options {
    client_id = var.auth0_idp_azure_ad.client_id
    client_secret = var.auth0_idp_azure_ad.client_secret
  }
  type = "front_channel"
  issuer = var.auth0_idp_azure_ad.issuer_path
  jwks_uri = var.auth0_idp_azure_ad.jwks_path
  discovery_url = var.auth0_idp_azure_ad.base_url
  token_endpoint = var.auth0_idp_azure_ad.token_path
  authorization_endpoint = var.auth0_idp_azure_ad.auth_path
  userinfo_endpoint = var.auth0_idp_azure_ad.userinfo_path
  scopes = ["openid", "email"]
  set_user_root_attributes = "on_first_login"
}