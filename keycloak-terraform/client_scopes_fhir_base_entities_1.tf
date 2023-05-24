// FHIR Base Entity #1 Resources
// See https://build.fhir.org/resourcelist.html
//
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "user_organization_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Organization.read"
  description            = "Read access to Organization"
  consent_screen_text    = "Read access to Organization for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_organization_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_organization_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_organization_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "patient_location_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Location.read"
  description            = "Read access to Locations"
  consent_screen_text    = "Read access to Locations for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_location_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_location_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_location_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_location_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Location.write"
  description            = "Write access to Locations"
  consent_screen_text    = "Write access to Locations for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_location_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_location_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_location_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_location_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Location.read"
  description            = "Read access to Locations"
  consent_screen_text    = "Read access to Locations for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_location_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_location_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_location_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_location_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Location.write"
  description            = "Write access to Locations"
  consent_screen_text    = "Write access to Locations for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_location_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_location_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_location_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

