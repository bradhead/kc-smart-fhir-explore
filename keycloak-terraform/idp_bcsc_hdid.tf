resource "keycloak_oidc_identity_provider" "bcsc" {
  realm                 = data.keycloak_realm.realm.id
  alias                 = "bcsc"
  display_name          = "BCSC for Patient Access"
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

resource "keycloak_attribute_importer_identity_provider_mapper" "bcsc_given_name" {
  realm                   = data.keycloak_realm.realm.id
  name                    = "given_name"
  claim_name              = "given_names"
  identity_provider_alias = keycloak_oidc_identity_provider.bcsc.alias
  user_attribute          = "firstName"
  extra_config = {
    syncMode = "INHERIT"
  }
}

resource "keycloak_hardcoded_attribute_identity_provider_mapper" "bcsc_idp" {
  realm                   = data.keycloak_realm.realm.id
  name                    = "idp"
  identity_provider_alias = keycloak_oidc_identity_provider.bcsc.alias
  attribute_name          = "idp"
  attribute_value         = "BCSC"
  user_session            = false
  extra_config = {
    syncMode = "INHERIT"
  }
}

resource "keycloak_attribute_importer_identity_provider_mapper" "bcsc_email" {
  realm                   = data.keycloak_realm.realm.id
  name                    = "email"
  claim_name              = "email"
  identity_provider_alias = keycloak_oidc_identity_provider.bcsc.alias
  user_attribute          = "email"
  extra_config = {
    syncMode = "INHERIT"
  }
}

resource "keycloak_attribute_importer_identity_provider_mapper" "bcsc_display_name" {
  realm                   = data.keycloak_realm.realm.id
  name                    = "display_name"
  claim_name              = "display_name"
  identity_provider_alias = keycloak_oidc_identity_provider.bcsc.alias
  user_attribute          = "fullName"
  extra_config = {
    syncMode = "INHERIT"
  }
}

resource "keycloak_attribute_importer_identity_provider_mapper" "bcsc_family_name" {
  realm                   = data.keycloak_realm.realm.id
  name                    = "family_name"
  claim_name              = "family_name"
  identity_provider_alias = keycloak_oidc_identity_provider.bcsc.alias
  user_attribute          = "lastName"
  extra_config = {
    syncMode = "INHERIT"
  }
}

resource "keycloak_attribute_importer_identity_provider_mapper" "bcsc_username" {
  realm                   = data.keycloak_realm.realm.id
  name                    = "username"
  claim_name              = "sub"
  identity_provider_alias = keycloak_oidc_identity_provider.bcsc.alias
  user_attribute          = "username"
  extra_config = {
    syncMode = "INHERIT"
  }
}

resource "keycloak_attribute_importer_identity_provider_mapper" "bcsc_hdid" {
  realm                   = data.keycloak_realm.realm.id
  name                    = "hdid"
  claim_name              = "sub"
  identity_provider_alias = keycloak_oidc_identity_provider.bcsc.alias
  user_attribute          = "hdid"
  extra_config = {
    syncMode = "INHERIT"
  }
}

resource "keycloak_attribute_importer_identity_provider_mapper" "bcsc_iasenv" {
  realm                   = data.keycloak_realm.realm.id
  name                    = "iasenv"
  claim_name              = "authoritative_party_identifier"
  identity_provider_alias = keycloak_oidc_identity_provider.bcsc.alias
  user_attribute          = "iasenv"
  extra_config = {
    syncMode = "INHERIT"
  }
}