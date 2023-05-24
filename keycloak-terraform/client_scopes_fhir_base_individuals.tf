resource "keycloak_openid_client_scope" "user_patient_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Patient.read"
  description            = "Read access to Patient"
  consent_screen_text    = "Read access to Patient for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_patient_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_patient_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_patient_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_practitioner_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
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
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/PractitionerRole.read"
  description            = "Read access to PractitionerRole"
  consent_screen_text    = "Read access to PractitionerRole for the current user"
  include_in_token_scope = true
}
resource "keycloak_openid_audience_protocol_mapper" "user_practitioner_role_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_practitioner_role_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_practitioner_role_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_related_persons_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
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
  realm_id               = data.keycloak_realm.realm.id
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
  realm_id               = data.keycloak_realm.realm.id
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


