resource "keycloak_oidc_identity_provider" "provider_kc" {
  realm                 = data.keycloak_realm.smart_realm.id
  alias                 = var.keycloak_idp_provider_kc.alias
  display_name          = "Provider IdP (Keycloak)"
  enabled               = true
  store_token           = false
  trust_email           = true
  hide_on_login_page    = false
  sync_mode             = "FORCE"
  authorization_url     = "${var.keycloak_idp_provider_kc.base_url}${var.keycloak_idp_provider_kc.auth_path}"
  token_url             = "${var.keycloak_idp_provider_kc.base_url}${var.keycloak_idp_provider_kc.token_path}"
  backchannel_supported = false
  client_id             = var.keycloak_idp_provider_kc.client_id
  client_secret         = var.keycloak_idp_provider_kc.client_secret
  default_scopes        = "openid profile email"
  validate_signature    = true
  jwks_url              = "${var.keycloak_idp_provider_kc.base_url}${var.keycloak_idp_provider_kc.jwks_path}"
  extra_config = {
    "clientAuthMethod" = "client_secret_post"
    "prompt"           = "login"
  }
}