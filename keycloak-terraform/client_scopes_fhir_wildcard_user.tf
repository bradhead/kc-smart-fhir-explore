// FHIR User Wildcard Scope forResources
// See https://build.fhir.org/resourcelist.html
//
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "user_all_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/*.read"
  description            = "Read access to all resources"
  consent_screen_text    = "Permission to read all resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_all_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_all_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_all_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_all_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/*.write"
  description            = "Write access to all resources"
  consent_screen_text    = "Permission to write all resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_all_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_all_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_all_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_all_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/*.*"
  description            = "Read and Write access to all resources"
  consent_screen_text    = "Permission to read and write all resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_all_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_all_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_all_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// ===============================================================================







