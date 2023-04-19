resource "keycloak_oidc_identity_provider" "bcsc" {
  realm                 = data.keycloak_realm.realm.id
  alias                 = var.keycloak_idp_bcsc.alias
  display_name          = "BCSC for Citizen/Patient Access"
  enabled               = true
  store_token           = false
  trust_email           = true
  hide_on_login_page    = false
  sync_mode             = "FORCE"
  authorization_url     = "${var.keycloak_idp_bcsc.base_url}${var.keycloak_idp_bcsc.auth_path}"
  token_url             = "${var.keycloak_idp_bcsc.base_url}${var.keycloak_idp_bcsc.token_path}"
  backchannel_supported = false
  client_id             = var.keycloak_idp_bcsc.client_id
  client_secret         = var.keycloak_idp_bcsc.client_secret
  default_scopes        = "openid profile"
  validate_signature    = true
  jwks_url              = "${var.keycloak_idp_bcsc.base_url}${var.keycloak_idp_bcsc.jwks_path}"
  extra_config = {
    "clientAuthMethod" = "client_secret_post"
    "prompt"           = "login"
  }
}