resource "keycloak_oidc_identity_provider" "azure_ad" {
  realm                 = data.keycloak_realm.id
  alias                 = "zedwerks_idp"
  display_name          = "ZedWerks Azure Actie Directory"
  enabled               = true
  store_token           = false
  trust_email           = true
  first_broker_login_flow_alias = keycloak_authentication_flow.first_login.alias
  hide_on_login_page    = false
  sync_mode             = "FORCE"
  authorization_url     = "${var.keycloak_idp_azure_ad.base_url}${var.keycloak_idp_azure_ad.auth_path}"
  token_url             = "${var.keycloak_idp_azure_ad.base_url}${var.keycloak_idp_azure_ad.token_path}"
  backchannel_supported = false
  client_id             = var.keycloak_idp_azure_ad.client_id
  client_secret         = var.keycloak_idp_azure_ad.client_secret
  default_scopes        = "openid profile email"
  validate_signature    = true
  jwks_url              = "${var.keycloak_idp_azure_ad.base_url}${var.keycloak_idp_azure_ad.jwks_path}"
  extra_config = {
    "clientAuthMethod" = "client_secret_post"
    "prompt"           = "login"
  }
}

resource "keycloak_hardcoded_attribute_identity_provider_mapper" "azure_ad_idp" {
  realm                   = data.keycloak_realm.smart_realm.id
  name                    = "idp"
  identity_provider_alias = keycloak_oidc_identity_provider.azure_ad.alias
  attribute_name          = "idp"
  attribute_value         = "azure_ad"
  user_session            = false
  extra_config = {
    syncMode = "INHERIT"
  }
}
