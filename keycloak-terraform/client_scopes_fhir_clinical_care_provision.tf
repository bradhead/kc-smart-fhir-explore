// FHIR Clinicial Care Provision Resources
// See https://build.fhir.org/resourcelist.html
//
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "patient_care_plan_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/CarePlan.read"
  description            = "Read access to CarePlan"
  consent_screen_text    = "Read access to Care Plans for the patient"
  include_in_token_scope = true
}
resource "keycloak_openid_audience_protocol_mapper" "patient_care_plan_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.patient_care_plan_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.patient_care_plan_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "system_care_plan_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "system/CarePlan.read"
  description            = "Read access to CarePlan"
  consent_screen_text    = "Read access to Care Plans for the patient"
  include_in_token_scope = true
}
resource "keycloak_openid_audience_protocol_mapper" "system_care_plan_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.system_care_plan_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.system_care_plan_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_care_plan_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/CarePlan.read"
  description            = "Read access to CarePlan"
  consent_screen_text    = "Read access to Care Plans for the patient"
  include_in_token_scope = true
}
resource "keycloak_openid_audience_protocol_mapper" "user_care_plan_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_care_plan_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_care_plan_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "patient_careteam_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/CareTeam.read"
  description            = "Read access to CareTeam"
  consent_screen_text    = "Permission to read CareTeam resources for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_careteam_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_careteam_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_careteam_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_careteam_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/CareTeam.write"
  description            = "Write access to CareTeam"
  consent_screen_text    = "Permission to write CareTeam resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_careteam_write_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_careteam_write_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_careteam_write_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_careteam_full_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/CareTeam.*"
  description            = "Read and Write access to CareTeam"
  consent_screen_text    = "Permission to read and write CareTeam resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_careteam_full_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_careteam_full_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_careteam_full_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "patient_goal_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Goal.read"
  description            = "Read access to Goals"
  consent_screen_text    = "Read access to Goals for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_goal_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_goal_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_goal_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}


resource "keycloak_openid_client_scope" "user_goal_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Goal.read"
  description            = "Read access to Goals"
  consent_screen_text    = "Read access to Goals for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_goal_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_goal_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_goal_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------
