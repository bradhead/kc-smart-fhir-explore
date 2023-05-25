
resource "keycloak_openid_client_scope" "user_appointment_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Appointment.read"
  description            = "Read access to Appointment"
  consent_screen_text    = "Permission to read Appointment"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_appointment_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_appointment_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_appointment_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_appointment_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Appointment.write"
  description            = "Write access to Appointment"
  consent_screen_text    = "Permission to write Appointment"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_appointment_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_appointment_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_appointment_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_appointment_full_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Appointment.*"
  description            = "Read and Write access to Appointment"
  consent_screen_text    = "Permission to read and write Appointment"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_appointment_full_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_appointment_full_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_appointment_full_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_appointment_resp_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/AppointmentResponse.read"
  description            = "Read access to AppointmentResponse"
  consent_screen_text    = "Permission to read AppointmentResponse that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_appointment_resp_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_appointment_resp_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_appointment_resp_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_appointment_resp_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/AppointmentResponse.write"
  description            = "Write access to AppointmentResponse"
  consent_screen_text    = "Permission to write AppointmentResponse that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_appointment_resp_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_appointment_resp_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_appointment_resp_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_appointment_resp_full_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/AppointmentResponse.*"
  description            = "Read and Write access to AppointmentResponse"
  consent_screen_text    = "Permission to read and write AppointmentResponse that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_appointment_resp_full_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_appointment_resp_full_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_appointment_resp_full_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

// ===============================================================================