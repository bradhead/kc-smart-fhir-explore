// SMART on FHIR user scopes by Resource types.
resource "keycloak_openid_client_scope" "user_all_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
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
  realm_id               = data.keycloak_realm.smart_realm.id
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
  realm_id               = data.keycloak_realm.smart_realm.id
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
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_account_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Account.read"
  description            = "Read access to Accounts"
  consent_screen_text    = "Permission to read Accounts that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_account_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_account_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_account_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_account_write_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Account.write"
  description            = "Write access to Accounts"
  consent_screen_text    = "Permission to write Accounts that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_account_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_account_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_account_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_account_all_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Account.*"
  description            = "Read and Write access to Accounts"
  consent_screen_text    = "Permission to read and write Accounts that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_account_all_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_account_all_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_account_all_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_activity_definition_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
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
  realm_id               = data.keycloak_realm.smart_realm.id
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
  realm_id               = data.keycloak_realm.smart_realm.id
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
resource "keycloak_openid_client_scope" "user_administrable_product_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/AdministrableProductDefinition.read"
  description            = "Read access to AdministrableProductDefinition"
  consent_screen_text    = "Permission to read AdministrableProductDefinition that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_administrable_product__read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_administrable_product_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_administrable_product_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_administrable_product_write_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/AdministrableProductDefinition.write"
  description            = "Write access to AdministrableProductDefinition"
  consent_screen_text    = "Permission to write AdministrableProductDefinition that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_administrable_product_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_administrable_product_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_administrable_product_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_administrable_product_full_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/AdministrableProductDefinition.*"
  description            = "Read and Write access to AdministrableProductDefinition"
  consent_screen_text    = "Permission to read and write AdministrableProductDefinition that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_administrable_product_full_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_administrable_product_full_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_administrable_product_full_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "user_adverse_event_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
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
  realm_id               = data.keycloak_realm.smart_realm.id
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
  realm_id               = data.keycloak_realm.smart_realm.id
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
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_allergy_intolerance_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/AllergyIntolerance.read"
  description            = "Read access to Allergies and Intolerances"
  consent_screen_text    = "Permission to read AllergyIntolerance that the current user can access"
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
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/AllergyIntolerance.write"
  description            = "Write access to Allergies and Intolerances"
  consent_screen_text    = "Permission to write AllergyIntolerance that the current user can access"
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
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/AllergyIntolerance.*"
  description            = "Read and Write access to Allergies and Intolerances"
  consent_screen_text    = "Permission to read and write AllergyIntolerance that the current user can access"
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
resource "keycloak_openid_client_scope" "user_appointment_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Appointment.read"
  description            = "Read access to Appointments"
  consent_screen_text    = "Permission to read Appointment that the current user can access"
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
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Appointment.write"
  description            = "Write access to Appointments"
  consent_screen_text    = "Permission to write Appointment that the current user can access"
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
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Appointment.*"
  description            = "Read and Write access to Appointments"
  consent_screen_text    = "Permission to read and write Appointment that the current user can access"
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
  realm_id               = data.keycloak_realm.smart_realm.id
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
  realm_id               = data.keycloak_realm.smart_realm.id
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
  realm_id               = data.keycloak_realm.smart_realm.id
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
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_audit_event_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/AuditEvent.read"
  description            = "Read access to AuditEvent"
  consent_screen_text    = "Permission to read AuditEvent that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_audit_event_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_audit_event_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_audit_event_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_basic_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Basic.read"
  description            = "Read access to Basic"
  consent_screen_text    = "Permission to read Basic resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_basic_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_basic_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_basic_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_basic_write_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Basic.write"
  description            = "Write access to Basic"
  consent_screen_text    = "Permission to write Basic resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_basic_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_basic_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_basic_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}


resource "keycloak_openid_client_scope" "user_basic_full_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Basic.*"
  description            = "Read and Write access to Basic"
  consent_screen_text    = "Permission to read and write Basic resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_basic_full_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_basic_full_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_basic_full_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_care_plan_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/CarePlan.read"
  description            = "Read access to CarePlan"
  consent_screen_text    = "Read access to Care Plans for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_care_plan_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_care_plan_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_care_plan_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "user_condition_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Condition.read"
  description            = "Read access to Conditions"
  consent_screen_text    = "Read access to Conditions for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_condition_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_condition_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_condition_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_device_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Device.read"
  description            = "Read access to Devices"
  consent_screen_text    = "Read access to Devices for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_device_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_device_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_device_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_device_write_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Device.write"
  description            = "Write access to Devices"
  consent_screen_text    = "Write access to Devices for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_device_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_device_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_device_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_device_full_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Device.*"
  description            = "Full Read/Write access to Devices"
  consent_screen_text    = "Full Read/Write access to Devices for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_device_full_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_device_full_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_device_full_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_diagnostic_report_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/DiagnosticReport.read"
  description            = "Read access to Diagnostic Reports"
  consent_screen_text    = "Read access to Diagnostic Reports for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_diagnostic_report_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_diagnostic_report_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_diagnostic_report_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_document_reference_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/DocumentReference.read"
  description            = "Read access to Document References"
  consent_screen_text    = "Read access to Document References for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_document_reference_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_document_reference_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_document_reference_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_encounter_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
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
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_explanation_benefit_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/ExplanationOfBenefit.read"
  description            = "Read access to Explanation Of Benefits"
  consent_screen_text    = "Read access to Explanation Of Benefits for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_explanation_benefit_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_explanation_benefit_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_explanation_benefit_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_goal_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
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

resource "keycloak_openid_client_scope" "user_immunization_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
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

resource "keycloak_openid_client_scope" "user_location_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
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
  realm_id               = data.keycloak_realm.smart_realm.id
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
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "user_medication_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
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
  realm_id               = data.keycloak_realm.smart_realm.id
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
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_medication_request_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
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
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_observation_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
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

resource "keycloak_openid_client_scope" "user_organization_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Organization.read"
  description            = "Read access to Organization"
  consent_screen_text    = "Read access to Organization for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_organization_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_organization_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_organization_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_patient_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Patient.read"
  description            = "Read access to Patient"
  consent_screen_text    = "Read access to Patient for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_patient_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_patient_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_patient_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_practitioner_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Practitioner.read"
  description            = "Read access to Practitioner"
  consent_screen_text    = "Read access to Practitioner for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_practitioner_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_practitioner_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_practitioner_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_practitioner_role_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/PractitionerRole.read"
  description            = "Read access to PractitionerRole"
  consent_screen_text    = "Read access to PractitionerRole for the current user"
  include_in_token_scope = true
}
resource "keycloak_openid_audience_protocol_mapper" "user_practitioner_role_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_practitioner_role_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_practitioner_role_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_procedure_read_scope" {
  realm_id            = data.keycloak_realm.smart_realm.id
  name                = "user/Procedure.read"
  description         = "Read access to Procedures"
  consent_screen_text = "Read access to Procedures for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_procedure_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_procedure_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_procedure_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_provenance_write_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Provenance.write"
  description            = "Write access to Provenance"
  consent_screen_text    = "Write access to Provenance for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_provenance_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_provenance_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_provenance_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_related_persons_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/RelatedPerson.read"
  description            = "Read access to Related Persons"
  consent_screen_text    = "Read access to Related Persons for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_related_persons_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_related_persons_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_related_persons_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_related_persons_write_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/RelatedPerson.write"
  description            = "Write access to Related Persons"
  consent_screen_text    = "Write access to Related Persons for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_related_persons_write_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_related_persons_write_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_related_persons_write_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_related_persons_all_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/RelatedPerson.*"
  description            = "Full access to Related Persons"
  consent_screen_text    = "Full access to Related Persons for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_related_persons_all_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_related_persons_all_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_related_persons_all_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
