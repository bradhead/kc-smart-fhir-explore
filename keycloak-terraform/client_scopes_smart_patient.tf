



resource "keycloak_openid_client_scope" "patient_observation_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Observation.read"
  description            = "Read access to Observations"
  consent_screen_text    = "Read access to Observations for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_observation_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_observation_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_observation_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_organization_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Organization.read"
  description            = "Read access to Organization"
  consent_screen_text    = "Read access to Organization for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_organization_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.patient_organization_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.patient_organization_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_patient_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Patient.read"
  description            = "Read access to Patient"
  consent_screen_text    = "Read access to Patient for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_patient_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.patient_patient_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.patient_patient_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_patient_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Patient.write"
  description            = "Write access to Patient"
  consent_screen_text    = "Write access to Patient for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_patient_write_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.patient_patient_write_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.patient_patient_write_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_practitioner_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Practitioner.read"
  description            = "Read access to Practitioner"
  consent_screen_text    = "Read access to Practitioner for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_practitioner_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_practitioner_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_practitioner_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_practitioner_role_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/PractitionerRole.read"
  description            = "Read access to PractitionerRole"
  consent_screen_text    = "Read access to PractitionerRole for the patient"
  include_in_token_scope = true
}
resource "keycloak_openid_audience_protocol_mapper" "patient_practitioner_role_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.patient_practitioner_role_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.patient_practitioner_role_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_procedure_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Procedure.read"
  description            = "Read access to Procedures"
  consent_screen_text    = "Read access to Procedures for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_procedure_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.patient_procedure_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.patient_procedure_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_provenance_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Provenance.write"
  description            = "Write access to Provenance"
  consent_screen_text    = "Write access to Provenance for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_provenance_write_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.patient_provenance_write_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.patient_provenance_write_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_related_persons_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/RelatedPerson.read"
  description            = "Read access to Related Persons"
  consent_screen_text    = "Read access to Related Persons for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_related_persons_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.patient_related_persons_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.patient_related_persons_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_related_persons_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/RelatedPerson.write"
  description            = "Write access to Related Persons"
  consent_screen_text    = "Write access to Related Persons for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_related_persons_write_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.patient_related_persons_write_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.patient_related_persons_write_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_related_persons_all_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/RelatedPerson.*"
  description            = "Full access to Related Persons"
  consent_screen_text    = "Full access to Related Persons for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_related_persons_all_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.patient_related_persons_all_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.patient_related_persons_all_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
