
resource "keycloak_openid_client_scope" "patient_diagnostic_report_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/DiagnosticReport.read"
  description            = "Read access to Diagnostic Reports"
  consent_screen_text    = "Read access to Diagnostic Reports for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_diagnostic_report_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_diagnostic_report_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_diagnostic_report_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "patient_bodystructure_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/BodyStructure.read"
  description            = "Read access to BodyStructure"
  consent_screen_text    = "Permission to read BodyStructure resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_bodystructure_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.patient_bodystructure_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.patient_bodystructure_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_bodystructure_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/BodyStructure.write"
  description            = "Write access to BodyStructure"
  consent_screen_text    = "Permission to write BodyStructure resources"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_bodystructure_write_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.patient_bodystructure_write_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.patient_bodystructure_write_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "patient_bodystructure_full_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/BodyStructure.*"
  description            = "Read and Write access to BodyStructure"
  consent_screen_text    = "Permission to read and write BodyStructure resources"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_bodystructure_full_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.patient_bodystructure_full_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.patient_bodystructure_full_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "user_bodystructure_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/BodyStructure.read"
  description            = "Read access to BodyStructure"
  consent_screen_text    = "Permission to read BodyStructure resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_bodystructure_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_bodystructure_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_bodystructure_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_bodystructure_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/BodyStructure.write"
  description            = "Write access to BodyStructure"
  consent_screen_text    = "Permission to write BodyStructure resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_bodystructure_write_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_bodystructure_write_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_bodystructure_write_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_bodystructure_full_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/BodyStructure.*"
  description            = "Read and Write access to BodyStructure"
  consent_screen_text    = "Permission to read and write BodyStructure resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_bodystructure_full_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_bodystructure_full_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_bodystructure_full_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_observation_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Observation.read"
  description            = "Read access to Observations"
  consent_screen_text    = "Read access to Observations for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_observation_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_observation_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_observation_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------
