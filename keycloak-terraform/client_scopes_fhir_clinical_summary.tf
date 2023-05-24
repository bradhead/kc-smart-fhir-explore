resource "keycloak_openid_client_scope" "patient_allergy_intolerance_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/AllergyIntolerance.read"
  description            = "Read access to Allergies and Intolerances"
  consent_screen_text    = "Read access to Allergies and Intolerances for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_allergy_intolerance_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_allergy_intolerance_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_allergy_intolerance_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_allergy_intolerance_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/AllergyIntolerance.write"
  description            = "Write access to Allergies and Intolerances"
  consent_screen_text    = "Write access to Allergies and Intolerances for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_allergy_intolerance_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_allergy_intolerance_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_allergy_intolerance_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "user_allergy_intolerance_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/AllergyIntolerance.read"
  description            = "Read access to Allergies and Intolerances"
  consent_screen_text    = "Read access to Allergies and Intolerances"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_allergy_intolerance_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_allergy_intolerance_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_allergy_intolerance_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_allergy_intolerance_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/AllergyIntolerance.write"
  description            = "Write access to Allergies and Intolerances"
  consent_screen_text    = "Write access to Allergies and Intolerances"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_allergy_intolerance_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_allergy_intolerance_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_allergy_intolerance_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_allergy_intolerance_full_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/AllergyIntolerance.*"
  description            = "Read/Write access to Allergies and Intolerances"
  consent_screen_text    = "Read/Write access to Allergies and Intolerances"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_allergy_intolerance_full_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_allergy_intolerance_full_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_allergy_intolerance_full_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "system_allergy_intolerance_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "system/AllergyIntolerance.read"
  description            = "Read access to Allergies and Intolerances"
  consent_screen_text    = "Read access to Allergies and Intolerances"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "system_allergy_intolerance_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.system_allergy_intolerance_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.system_allergy_intolerance_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "system_allergy_intolerance_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "system/AllergyIntolerance.write"
  description            = "Write access to Allergies and Intolerances"
  consent_screen_text    = "Write access to Allergies and Intolerances"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "system_allergy_intolerance_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.system_allergy_intolerance_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.system_allergy_intolerance_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "system_allergy_intolerance_full_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "system/AllergyIntolerance.*"
  description            = "Read/Write access to Allergies and Intolerances"
  consent_screen_text    = "Read/Write access to Allergies and Intolerances"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "system_allergy_intolerance_full_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.system_allergy_intolerance_full_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.system_allergy_intolerance_full_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// ===============================================================================
resource "keycloak_openid_client_scope" "patient_condition_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Condition.read"
  description            = "Read access to Conditions"
  consent_screen_text    = "Read access to Conditions for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_condition_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_condition_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_condition_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// ===============================================================================
resource "keycloak_openid_client_scope" "user_adverse_event_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/AdverseEvent.read"
  description            = "Read access to AdverseEvent"
  consent_screen_text    = "Permission to read AdverseEvent that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_adverse_event_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_adverse_event_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_adverse_event_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_adverse_event_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/AdverseEvent.write"
  description            = "Write access to AdverseEvent"
  consent_screen_text    = "Permission to write AdverseEvent that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_adverse_event_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_adverse_event_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_adverse_event_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_adverse_event_full_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/AdverseEvent.*"
  description            = "Read and Write access to AdverseEvent"
  consent_screen_text    = "Permission to read and write AdverseEvent that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_adverse_event_full_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_adverse_event_full_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_adverse_event_full_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// ===============================================================================

resource "keycloak_openid_client_scope" "user_procedure_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Procedure.read"
  description            = "Read access to Procedures"
  consent_screen_text    = "Read access to Procedures for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_procedure_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_procedure_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_procedure_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------