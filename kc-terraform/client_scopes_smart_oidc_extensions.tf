resource "keycloak_openid_client_scope" "fhir_user_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "fhirUser"
  description            = "Permission to retrieve current logged-in user"
  consent_screen_text    = "Permission to retrieve current logged-in user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "fhir_user_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.fhir_user_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.fhir_user_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_generic_protocol_mapper" "oidc-patient-prefix-usermodel-attribute-mapper" {
  realm_id        = keycloak_openid_client_scope.fhir_user_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.fhir_user_scope.id
  name            = "fhirUser Mapper"
  protocol        = "openid-connect"
  protocol_mapper = "oidc-patient-prefix-usermodel-attribute-mapper"
  config = {
    "user.attribute"       = "resourceId",
    "claim.name"           = "fhirUser",
    "jsonType.label"       = "String",
    "id.token.claim"       = "true",
    "access.token.claim"   = "false",
    "userinfo.token.claim" = "true"
  }
}
resource "keycloak_openid_client_scope" "launch_patient_context_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "launch/patient"
  description            = "Used by clients to request a patient record scoped access token."
  include_in_token_scope = true
}
resource "keycloak_openid_audience_protocol_mapper" "launch_patient_context_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.launch_patient_context_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.launch_patient_context_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_generic_protocol_mapper" "launch_patient_context_protocol_mapper" {
  realm_id        = keycloak_openid_client_scope.launch_patient_context_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.launch_patient_context_scope.id
  name            = "Patient ID Token Mapper"
  protocol        = "openid-connect"
  protocol_mapper = "oidc-usersessionmodel-note-mapper"
  config = {
    "user.session.note"          = "patient_id",
    "claim.name"                 = "patient",
    "jsonType.label"             = "String",
    "id.token.claim"             = "false",
    "access.token.claim"         = "false",
    "access.tokenResponse.claim" = "true"
  }
}

resource "keycloak_generic_protocol_mapper" "launch_patient_context_group_membership_protocol_mapper" {
  realm_id        = keycloak_openid_client_scope.launch_patient_context_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.launch_patient_context_scope.id
  name            = "Group Membership Mapper"
  protocol        = "openid-connect"
  protocol_mapper = "oidc-group-membership-mapper"
  config = {
    "claim.name"           = "group",
    "full.path"            = "false",
    "id.token.claim"       = "true",
    "access.token.claim"   = "true",
    "userinfo.token.claim" = "true"
  }
}

resource "keycloak_openid_client_scope" "launch_user_context_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "launch/user"
  description            = "Used by clients to request a user session scoped access token."
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "launch_user_context_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.launch_user_context_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.launch_user_context_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "online_access_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "online_access"
  description            = "Request a refresh_token that can be used to obtain a new access token to replace an expired one, and that will be usable for as long as the end-user remains online"
  consent_screen_text    = "Retain access while you are online"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "online_access_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.online_access_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.online_access_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
