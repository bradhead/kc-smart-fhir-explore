// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_medication_request_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/MedicationRequest.read"
  description            = "Read access to Medication Requests"
  consent_screen_text    = "Read access to Medication Requests for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_medication_request_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_medication_request_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_medication_request_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_immunization_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Immunization.read"
  description            = "Read access to Immunizations"
  consent_screen_text    = "Read access to Immunizations for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_immunization_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_immunization_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_immunization_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_immunization_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Immunization.read"
  description            = "Read access to Immunizations"
  consent_screen_text    = "Read access to Immunizations for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_immunization_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_immunization_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_immunization_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------


resource "keycloak_openid_client_scope" "patient_medication_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Medication.read"
  description            = "Read access to Medications"
  consent_screen_text    = "Read access to Medications for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_medication_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_medication_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_medication_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "patient_medication_dispense_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/MedicationDispense.read"
  description            = "Read access to Medication Dispenses"
  consent_screen_text    = "Read access to Medication Dispenses for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_medication_dispense_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_medication_dispense_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_medication_dispense_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_medication_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Medication.read"
  description            = "Read access to Medications"
  consent_screen_text    = "Read access to Medications for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_medication_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_medication_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_medication_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_medication_dispense_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/MedicationDispense.read"
  description            = "Read access to Medication Dispenses"
  consent_screen_text    = "Read access to Medication Dispenses for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_medication_dispense_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_medication_dispense_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_medication_dispense_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_medication_request_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/MedicationRequest.read"
  description            = "Read access to Medication Requests"
  consent_screen_text    = "Read access to Medication Requests for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_medication_request_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_medication_request_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_medication_request_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}