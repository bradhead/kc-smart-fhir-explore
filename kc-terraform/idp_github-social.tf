resource "keycloak_oidc_identity_provider" "github" {
  realm                 = data.keycloak_realm.smart_realm.id
  alias                 = "github"
  display_name          = "GitHub"
  enabled               = true
  store_token           = false
  trust_email           = true
  hide_on_login_page    = false
  sync_mode             = "FORCE"
  authorization_url     = "${var.keycloak_idp_github.base_url}${var.keycloak_idp_github.auth_path}"   
  token_url             = "${var.keycloak_idp_github.base_url}${var.keycloak_idp_github.token_path}"
  backchannel_supported = false
  client_id             = var.keycloak_idp_github.client_id
  client_secret         = var.keycloak_idp_github.client_secret
  default_scopes        = "openid profile email"
  validate_signature    = true
  jwks_url              = "${var.keycloak_idp_github.base_url}${var.keycloak_idp_github.jwks_path}"
}