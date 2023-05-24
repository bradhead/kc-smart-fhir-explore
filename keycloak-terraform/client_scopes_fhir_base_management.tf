
resource "keycloak_openid_client_scope" "patient_encounter_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Encounter.read"
  description            = "Read access to Encounters"
  consent_screen_text    = "Read access to Encounters for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_encounter_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_encounter_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_encounter_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_encounter_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Encounter.read"
  description            = "Read access to Encounters"
  consent_screen_text    = "Read access to Encounters for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_encounter_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_encounter_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_encounter_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}