

resource "keycloak_openid_client_scope" "user_activity_definition_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/ActivityDefinition.read"
  description            = "Read access to ActivityDefinition"
  consent_screen_text    = "Permission to read ActivityDefinition that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_activity_definition_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_activity_definition_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_activity_definition_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_activity_definition_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/ActivityDefinition.write"
  description            = "Write access to ActivityDefinition"
  consent_screen_text    = "Permission to write ActivityDefinition that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_activity_definition_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_activity_definition_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_activity_definition_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_activity_definition_full_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/ActivityDefinition.*"
  description            = "Read and Write access to ActivityDefinition"
  consent_screen_text    = "Permission to read and write ActivityDefinition that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_activity_definition_full_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_activity_definition_full_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_activity_definition_full_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------